# -*- encoding: utf-8 -*-
# stub: async-http 0.54.1 ruby lib

Gem::Specification.new do |s|
  s.name = "async-http".freeze
  s.version = "0.54.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Samuel Williams".freeze]
  s.date = "2021-01-06"
  s.homepage = "https://github.com/socketry/async-http".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.3".freeze
  s.summary = "A HTTP client and server library.".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<async>.freeze, ["~> 1.25"])
      s.add_runtime_dependency(%q<async-io>.freeze, ["~> 1.28"])
      s.add_runtime_dependency(%q<async-pool>.freeze, ["~> 0.2"])
      s.add_runtime_dependency(%q<protocol-http>.freeze, ["~> 0.21.0"])
      s.add_runtime_dependency(%q<protocol-http1>.freeze, ["~> 0.13.0"])
      s.add_runtime_dependency(%q<protocol-http2>.freeze, ["~> 0.14.0"])
      s.add_development_dependency(%q<async-container>.freeze, ["~> 0.14"])
      s.add_development_dependency(%q<async-rspec>.freeze, ["~> 1.10"])
      s.add_development_dependency(%q<covered>.freeze, [">= 0"])
      s.add_development_dependency(%q<rack-test>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.6"])
      s.add_development_dependency(%q<localhost>.freeze, [">= 0"])
    else
      s.add_dependency(%q<async>.freeze, ["~> 1.25"])
      s.add_dependency(%q<async-io>.freeze, ["~> 1.28"])
      s.add_dependency(%q<async-pool>.freeze, ["~> 0.2"])
      s.add_dependency(%q<protocol-http>.freeze, ["~> 0.21.0"])
      s.add_dependency(%q<protocol-http1>.freeze, ["~> 0.13.0"])
      s.add_dependency(%q<protocol-http2>.freeze, ["~> 0.14.0"])
      s.add_dependency(%q<async-container>.freeze, ["~> 0.14"])
      s.add_dependency(%q<async-rspec>.freeze, ["~> 1.10"])
      s.add_dependency(%q<covered>.freeze, [">= 0"])
      s.add_dependency(%q<rack-test>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.6"])
      s.add_dependency(%q<localhost>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<async>.freeze, ["~> 1.25"])
    s.add_dependency(%q<async-io>.freeze, ["~> 1.28"])
    s.add_dependency(%q<async-pool>.freeze, ["~> 0.2"])
    s.add_dependency(%q<protocol-http>.freeze, ["~> 0.21.0"])
    s.add_dependency(%q<protocol-http1>.freeze, ["~> 0.13.0"])
    s.add_dependency(%q<protocol-http2>.freeze, ["~> 0.14.0"])
    s.add_dependency(%q<async-container>.freeze, ["~> 0.14"])
    s.add_dependency(%q<async-rspec>.freeze, ["~> 1.10"])
    s.add_dependency(%q<covered>.freeze, [">= 0"])
    s.add_dependency(%q<rack-test>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.6"])
    s.add_dependency(%q<localhost>.freeze, [">= 0"])
  end
end
