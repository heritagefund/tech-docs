# encoding: UTF-8

module Middleman
  module Sitemap
    class SearchIndexResource < ::Middleman::Sitemap::Resource
      def initialize(store, path, options)
        @resources_to_index = options[:resources]
        @fields = options[:fields]
        @callback = options[:before_index]
        @pipeline = options[:pipeline]
        @pipeline_remove = options[:pipeline_remove]
        @tokenizer_separator = options[:tokenizer_separator]
        @cache_index = options[:cache]
        @language = options[:language]
        @lunr_dirs = options[:lunr_dirs] + [File.expand_path("../../../vendor/assets/javascripts/", __FILE__)]
        super(store, path)
      end

      def template?
        false
      end

      def get_source_file
        path
      end

      def render(opts={}, locs={})
        if @cache_index
          @index ||= build_index
        else
          build_index
        end
      end

      def build_index
        # Build js context
        libs = []
        libs << lunr_resource('lunr.js')
        if @language != 'en' # English is the default
          libs << lunr_resource("lunr.stemmer.support.js")
          libs << lunr_resource("lunr.#{@language}.js")
        end

        source = libs.map { |lib| File.read(lib, mode: "rb:UTF-8") }
        source << "lunr.Index.prototype.indexJson = function () {return JSON.stringify(this.toJSON());};"

        @pipeline.each do |name, function|
          source << "lunr.Pipeline.registerFunction((#{function}), '#{name}');"
        end

        # Build lunr based on config
        source << "lunr.middlemanSearchIndex = lunr(function () {"

        # Use autogenerated id field as reference
        source << "this.ref('id');"

        # Remove default pipeline filters
        @pipeline_remove.each do |name|
          source << "this.pipeline.remove(lunr.#{name});"
        end

        # Add functions to pipeline (just registering them isn't enough)
        @pipeline.each do |name, function|
          source << "this.pipeline.add(lunr.Pipeline.registeredFunctions.#{name});"
        end

        if @tokenizer_separator.present?
          source << "this.tokenizerFn.seperator = #{@tokenizer_separator}"
        end

        # Use language if set
        source << "this.use(lunr.#{@language});" if @language != 'en'

        # Define fields with boost
        @fields.each do |field, opts|
          next if opts[:index] == false
          source << "this.field('#{field}', { boost: #{opts[:boost]}});"
        end

        source << "});"


        # Ref to resource map
        store = Hash.new

        # Iterate over all resources and build index
        @app.sitemap.resources.each_with_index do |resource, id|
          begin
            catch(:skip) do
              next if resource.data['index'] == false
              next unless @resources_to_index.any? {|whitelisted| resource.path.start_with? whitelisted }

              to_index = Hash.new
              to_store = Hash.new

              @fields.each do |field, opts|
                value = value_for(resource, field, opts)
                throw(:skip) if value.blank? && opts[:required]
                to_index[field] = value unless opts[:index] == false
                to_store[field] = value if opts[:store]
              end

              @callback.call(to_index, to_store, resource) if @callback

              source << "lunr.middlemanSearchIndex.add(#{to_index.merge(id: id).to_json});"

              store[id] = to_store
            end
          rescue => ex
            @app.logger.warn "Error processing resource for index: #{resource.path}\n#{ex}\n #{ex.backtrace.join("\n ")}"
          end
        end

        # Generate JSON output
        context = ExecJS.compile(source.join("\n"))
        json = context.eval('lunr.middlemanSearchIndex.indexJson()')
        "{\"index\": #{json}, \"docs\": #{store.to_json}}"
      end

      def binary?
        false
      end

      def ignored?
        false
      end

      def value_for(resource, field, opts={})
        case field.to_s
        when 'content'

          html = resource.render( { :layout => false }, { :current_path => resource.path } )
          Nokogiri::HTML(html).xpath("//text()").text
        when 'url'
          resource.url
        else
          value = resource.data.send(field) || resource.metadata.fetch(:options, {}).fetch(field, nil)
          value ? Array(value).compact.join(" ") : nil
        end
      end

      private

      def minified_path(resource_name)
        return resource_name if resource_name.end_with? '.min.js'
        return resource_name unless resource_name.end_with? '.js'
        resource_name.sub(/(.*)\.js$/,'\1.min.js')
      end

      def lunr_resource(resource_name)
        @lunr_dirs.flat_map do |dir|
          [File.join(dir, minified_path(resource_name)), File.join(dir, resource_name)]
        end.detect { |file| File.exists? file } or raise "Couldn't find #{resource_name} nor #{minified_path(resource_name)} in #{@lunr_dirs.map {|dir| File.absolute_path dir }.join File::PATH_SEPARATOR}"
      end
    end
  end
end