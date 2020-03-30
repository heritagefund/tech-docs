# -*- encoding: utf-8 -*-
# stub: govuk_tech_docs 2.0.11 ruby lib

Gem::Specification.new do |s|
  s.name = "govuk_tech_docs".freeze
  s.version = "2.0.11"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Government Digital Service".freeze]
  s.bindir = "exe".freeze
  s.date = "2019-11-25"
  s.description = "Gem to distribute the GOV.UK Tech Docs Template. See https://github.com/alphagov/tech-docs-gem for the project.".freeze
  s.email = ["govuk-dev@digital.cabinet-office.gov.uk".freeze]
  s.homepage = "https://github.com/alphagov/tech-docs-gem".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Gem to distribute the GOV.UK Tech Docs Template".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<chronic>.freeze, ["~> 0.10.2"])
      s.add_runtime_dependency(%q<middleman>.freeze, ["~> 4.0"])
      s.add_runtime_dependency(%q<middleman-autoprefixer>.freeze, ["~> 2.7.0"])
      s.add_runtime_dependency(%q<middleman-compass>.freeze, [">= 4.0.0"])
      s.add_runtime_dependency(%q<middleman-livereload>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<middleman-sprockets>.freeze, ["~> 4.0.0"])
      s.add_runtime_dependency(%q<sprockets>.freeze, ["= 4.0.0.beta10"])
      s.add_runtime_dependency(%q<sass>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<middleman-syntax>.freeze, ["~> 3.0.0"])
      s.add_runtime_dependency(%q<middleman-search-gds>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<nokogiri>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<redcarpet>.freeze, ["~> 3.3.2"])
      s.add_runtime_dependency(%q<openapi3_parser>.freeze, ["~> 0.5.0"])
      s.add_runtime_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 2.0.1"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<capybara>.freeze, ["~> 2.18.0"])
      s.add_development_dependency(%q<rubocop-govuk>.freeze, ["~> 1.0.0"])
      s.add_development_dependency(%q<jasmine>.freeze, ["~> 3.1.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.7.0"])
      s.add_development_dependency(%q<byebug>.freeze, [">= 0"])
    else
      s.add_dependency(%q<activesupport>.freeze, [">= 0"])
      s.add_dependency(%q<chronic>.freeze, ["~> 0.10.2"])
      s.add_dependency(%q<middleman>.freeze, ["~> 4.0"])
      s.add_dependency(%q<middleman-autoprefixer>.freeze, ["~> 2.7.0"])
      s.add_dependency(%q<middleman-compass>.freeze, [">= 4.0.0"])
      s.add_dependency(%q<middleman-livereload>.freeze, [">= 0"])
      s.add_dependency(%q<middleman-sprockets>.freeze, ["~> 4.0.0"])
      s.add_dependency(%q<sprockets>.freeze, ["= 4.0.0.beta10"])
      s.add_dependency(%q<sass>.freeze, [">= 0"])
      s.add_dependency(%q<middleman-syntax>.freeze, ["~> 3.0.0"])
      s.add_dependency(%q<middleman-search-gds>.freeze, [">= 0"])
      s.add_dependency(%q<nokogiri>.freeze, [">= 0"])
      s.add_dependency(%q<redcarpet>.freeze, ["~> 3.3.2"])
      s.add_dependency(%q<openapi3_parser>.freeze, ["~> 0.5.0"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<bundler>.freeze, ["~> 2.0.1"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<capybara>.freeze, ["~> 2.18.0"])
      s.add_dependency(%q<rubocop-govuk>.freeze, ["~> 1.0.0"])
      s.add_dependency(%q<jasmine>.freeze, ["~> 3.1.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.7.0"])
      s.add_dependency(%q<byebug>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>.freeze, [">= 0"])
    s.add_dependency(%q<chronic>.freeze, ["~> 0.10.2"])
    s.add_dependency(%q<middleman>.freeze, ["~> 4.0"])
    s.add_dependency(%q<middleman-autoprefixer>.freeze, ["~> 2.7.0"])
    s.add_dependency(%q<middleman-compass>.freeze, [">= 4.0.0"])
    s.add_dependency(%q<middleman-livereload>.freeze, [">= 0"])
    s.add_dependency(%q<middleman-sprockets>.freeze, ["~> 4.0.0"])
    s.add_dependency(%q<sprockets>.freeze, ["= 4.0.0.beta10"])
    s.add_dependency(%q<sass>.freeze, [">= 0"])
    s.add_dependency(%q<middleman-syntax>.freeze, ["~> 3.0.0"])
    s.add_dependency(%q<middleman-search-gds>.freeze, [">= 0"])
    s.add_dependency(%q<nokogiri>.freeze, [">= 0"])
    s.add_dependency(%q<redcarpet>.freeze, ["~> 3.3.2"])
    s.add_dependency(%q<openapi3_parser>.freeze, ["~> 0.5.0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 2.0.1"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<capybara>.freeze, ["~> 2.18.0"])
    s.add_dependency(%q<rubocop-govuk>.freeze, ["~> 1.0.0"])
    s.add_dependency(%q<jasmine>.freeze, ["~> 3.1.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.7.0"])
    s.add_dependency(%q<byebug>.freeze, [">= 0"])
  end
end
