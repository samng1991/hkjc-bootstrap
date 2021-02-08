# -*- encoding: utf-8 -*-
# stub: flexmock 2.3.6 ruby lib

Gem::Specification.new do |s|
  s.name = "flexmock".freeze
  s.version = "2.3.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jim Weirich".freeze, "Sylvain Joyeux".freeze]
  s.date = "2017-10-02"
  s.description = "\n    FlexMock is a extremely simple mock object class compatible\n    with the Minitest framework.  Although the FlexMock's\n    interface is simple, it is very flexible.\n  ".freeze
  s.email = "sylvain.joyeux@m4x.org".freeze
  s.homepage = "https://github.com/doudou/flexmock".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0".freeze)
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Simple and Flexible Mock Objects for Testing".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<minitest>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0.11.0"])
      s.add_development_dependency(%q<coveralls>.freeze, [">= 0"])
    else
      s.add_dependency(%q<minitest>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0.11.0"])
      s.add_dependency(%q<coveralls>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0.11.0"])
    s.add_dependency(%q<coveralls>.freeze, [">= 0"])
  end
end
