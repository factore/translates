# -*- encoding: utf-8 -*-
# stub: translates 0.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "translates"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["devlin zed"]
  s.date = "2014-11-07"
  s.description = "handles i18n delegation on multilingual sites"
  s.email = ["me@devlinzed.com"]
  s.files = [".gitignore", "Gemfile", "README.md", "Rakefile", "UNLICENSE.md", "lib/translates.rb", "lib/translates/core.rb", "lib/translates/version.rb", "test/support/dummy.rb", "test/test_helper.rb", "test/translates/core_test.rb", "translates.gemspec"]
  s.homepage = "https://stealthis.ca/translates.git/about"
  s.licenses = ["unlicense"]
  s.rubygems_version = "2.2.2"
  s.summary = "handles i18n delegation on multilingual sites"
  s.test_files = ["test/support/dummy.rb", "test/test_helper.rb", "test/translates/core_test.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.7"])
      s.add_development_dependency(%q<minitest>, ["~> 5.0"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_runtime_dependency(%q<i18n>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.7"])
      s.add_dependency(%q<minitest>, ["~> 5.0"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<i18n>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.7"])
    s.add_dependency(%q<minitest>, ["~> 5.0"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<i18n>, [">= 0"])
  end
end
