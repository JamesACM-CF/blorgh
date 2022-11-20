require_relative "lib/blorgh/version"

Gem::Specification.new do |spec|
  spec.name        = "blorgh"
  spec.version     = Blorgh::VERSION
  spec.authors     = ["jaime canales"]
  spec.email       = ["jaimecanales@do.com"]
  spec.homepage    = "https://www.comunidadfeliz.com"
  spec.summary     = "Summary of Blorgh."
  spec.description = "Description of Blorgh."
    spec.license     = "MIT"
  
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.4"

  spec.test_files = Dir['spec/**/*']

  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency 'factory_bot_rails'
  spec.add_development_dependency 'faker'
  spec.add_development_dependency 'shoulda-matchers'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'sqlite3'
end
