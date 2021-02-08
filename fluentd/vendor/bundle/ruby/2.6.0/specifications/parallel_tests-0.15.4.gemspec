# -*- encoding: utf-8 -*-
# stub: parallel_tests 0.15.4 ruby lib

Gem::Specification.new do |s|
  s.name = "parallel_tests".freeze
  s.version = "0.15.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Michael Grosser".freeze]
  s.date = "2013-09-14"
  s.email = "michael@grosser.it".freeze
  s.executables = ["parallel_spinach".freeze, "parallel_cucumber".freeze, "parallel_rspec".freeze, "parallel_test".freeze]
  s.files = ["bin/parallel_cucumber".freeze, "bin/parallel_rspec".freeze, "bin/parallel_spinach".freeze, "bin/parallel_test".freeze]
  s.homepage = "http://github.com/grosser/parallel_tests".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Run Test::Unit / RSpec / Cucumber / Spinach in parallel".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<parallel>.freeze, [">= 0"])
    else
      s.add_dependency(%q<parallel>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<parallel>.freeze, [">= 0"])
  end
end
