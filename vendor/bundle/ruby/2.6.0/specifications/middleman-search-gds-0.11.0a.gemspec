# -*- encoding: utf-8 -*-
# stub: middleman-search-gds 0.11.0a ruby lib

Gem::Specification.new do |s|
  s.name = "middleman-search-gds".freeze
  s.version = "0.11.0a"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Government Digital Service".freeze, "Mat\u00EDas Garc\u00EDa Isa\u00EDa".freeze, "Santiago Palladino".freeze]
  s.date = "2018-10-29"
  s.description = "LunrJS-based search for Middleman. This is an unofficial fork of the middleman-search gem.".freeze
  s.email = ["govuk-dev@digital.cabinet-office.gov.uk".freeze, "mgarcia@manas.com.ar".freeze, "spalladino@manas.com.ar".freeze]
  s.homepage = "http://github.com/alphagov/middleman-search".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.3".freeze
  s.summary = "LunrJS-based search for Middleman".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<middleman-core>.freeze, [">= 3.2"])
      s.add_runtime_dependency(%q<execjs>.freeze, ["~> 2.6"])
      s.add_runtime_dependency(%q<nokogiri>.freeze, ["~> 1.6"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.5"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    else
      s.add_dependency(%q<middleman-core>.freeze, [">= 3.2"])
      s.add_dependency(%q<execjs>.freeze, ["~> 2.6"])
      s.add_dependency(%q<nokogiri>.freeze, ["~> 1.6"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.5"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<middleman-core>.freeze, [">= 3.2"])
    s.add_dependency(%q<execjs>.freeze, ["~> 2.6"])
    s.add_dependency(%q<nokogiri>.freeze, ["~> 1.6"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.5"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
