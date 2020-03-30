# -*- encoding: utf-8 -*-
# stub: openapi3_parser 0.5.2 ruby lib

Gem::Specification.new do |s|
  s.name = "openapi3_parser".freeze
  s.version = "0.5.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Kevin Dew".freeze]
  s.date = "2018-08-29"
  s.description = "    A tool to parse and validate OpenAPI V3 files.\n    Aims to provide complete compatibility with the OpenAPI specification and\n    to provide a natural, idiomatic way to interact with a openapi.yaml file.\n".freeze
  s.email = "kevindew@me.com".freeze
  s.homepage = "https://github.com/kevindew/openapi_parser".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3.0".freeze)
  s.rubygems_version = "3.0.3".freeze
  s.summary = "An OpenAPI V3 parser for Ruby".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<commonmarker>.freeze, ["~> 0.17"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.15"])
      s.add_development_dependency(%q<byebug>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.6"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.53.0"])
      s.add_development_dependency(%q<webmock>.freeze, ["~> 3.1"])
    else
      s.add_dependency(%q<commonmarker>.freeze, ["~> 0.17"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.15"])
      s.add_dependency(%q<byebug>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.6"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.53.0"])
      s.add_dependency(%q<webmock>.freeze, ["~> 3.1"])
    end
  else
    s.add_dependency(%q<commonmarker>.freeze, ["~> 0.17"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.15"])
    s.add_dependency(%q<byebug>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.6"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.53.0"])
    s.add_dependency(%q<webmock>.freeze, ["~> 3.1"])
  end
end
