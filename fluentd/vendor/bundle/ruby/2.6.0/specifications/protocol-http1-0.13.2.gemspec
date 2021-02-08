# -*- encoding: utf-8 -*-
# stub: protocol-http1 0.13.2 ruby lib

Gem::Specification.new do |s|
  s.name = "protocol-http1".freeze
  s.version = "0.13.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Samuel Williams".freeze]
  s.date = "2020-11-25"
  s.homepage = "https://github.com/socketry/protocol-http1".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4".freeze)
  s.rubygems_version = "3.0.3".freeze
  s.summary = "A low level implementation of the HTTP/1 protocol.".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<protocol-http>.freeze, ["~> 0.19"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<covered>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<rspec-files>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<rspec-memory>.freeze, ["~> 1.0"])
    else
      s.add_dependency(%q<protocol-http>.freeze, ["~> 0.19"])
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<covered>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<rspec-files>.freeze, ["~> 1.0"])
      s.add_dependency(%q<rspec-memory>.freeze, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<protocol-http>.freeze, ["~> 0.19"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<covered>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rspec-files>.freeze, ["~> 1.0"])
    s.add_dependency(%q<rspec-memory>.freeze, ["~> 1.0"])
  end
end
