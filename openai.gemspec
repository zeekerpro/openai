require_relative "lib/openai/version"

Gem::Specification.new do |spec|
  spec.name        = "openai"
  spec.version     = Openai::VERSION
  spec.authors     = ["zeeker"]
  spec.email       = ["zeekerpro@gmail.com"]
  spec.homepage    = "https://github.com/zeekerpro/openai"
  spec.summary     = "chatgpt client engine for laobiao-backend"
  spec.description = "chatgpt client engine for laobiao-backend"
  spec.license     = "MIT"


  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "https://github.com/zeekerpro/openai"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/zeekerpro/openai"
  spec.metadata["changelog_uri"] = "https://github.com/zeekerpro/openai/changelog.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.5"
  spec.add_dependency "ruby-openai", ">= 0.1.0"
end
