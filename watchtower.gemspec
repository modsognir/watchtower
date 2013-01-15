$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "watchtower/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "watchtower"
  s.version     = Watchtower::VERSION
  s.authors     = ["Jared Fraser"]
  s.email       = ["dev@jsf.io"]
  s.homepage    = "http://github.com/modsognir/watchtower"
  s.summary     = "Rails CRM Engine"
  s.description = "Rails CRM Engine"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.5"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
end
