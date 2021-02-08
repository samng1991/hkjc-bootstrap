# -*- encoding: utf-8 -*-
# stub: cool.io 1.7.0 ruby lib
# stub: ext/cool.io/extconf.rb ext/iobuffer/extconf.rb

Gem::Specification.new do |s|
  s.name = "cool.io".freeze
  s.version = "1.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Tony Arcieri".freeze, "Masahiro Nakagawa".freeze]
  s.date = "2020-09-26"
  s.description = "Cool.io provides a high performance event framework for Ruby which uses the libev C library".freeze
  s.email = ["tony.arcieri@gmail.com".freeze, "repeatedly@gmail.com".freeze]
  s.extensions = ["ext/cool.io/extconf.rb".freeze, "ext/iobuffer/extconf.rb".freeze]
  s.files = ["ext/cool.io/extconf.rb".freeze, "ext/iobuffer/extconf.rb".freeze]
  s.homepage = "http://coolio.github.com".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.3".freeze
  s.summary = "A cool framework for doing high performance I/O in Ruby".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake-compiler>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<rake-compiler-dock>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 2.13.0"])
      s.add_development_dependency(%q<rdoc>.freeze, [">= 3.6.0"])
    else
      s.add_dependency(%q<rake-compiler>.freeze, ["~> 1.0"])
      s.add_dependency(%q<rake-compiler-dock>.freeze, ["~> 1.0"])
      s.add_dependency(%q<rspec>.freeze, [">= 2.13.0"])
      s.add_dependency(%q<rdoc>.freeze, [">= 3.6.0"])
    end
  else
    s.add_dependency(%q<rake-compiler>.freeze, ["~> 1.0"])
    s.add_dependency(%q<rake-compiler-dock>.freeze, ["~> 1.0"])
    s.add_dependency(%q<rspec>.freeze, [">= 2.13.0"])
    s.add_dependency(%q<rdoc>.freeze, [">= 3.6.0"])
  end
end
