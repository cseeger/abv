$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "abv/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "abv"
  s.version     = Abv::VERSION
  s.authors     = ["Chad Seeger"]
  s.email       = ["cseeger@truecar.com"]
  s.homepage    = "http://www.truecar.com"
  s.summary     = "Summary of Abv."
  s.description = "Description of Abv."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.2"
  s.add_dependency "interactor", "~> 3.0"

  s.add_development_dependency "sqlite3"
end
