# frozen_string_literal: true

require_relative "lib/R2/version"

Gem::Specification.new do |spec|
  spec.name = "R2"
  spec.version = R2::VERSION
  spec.authors = ["Brit McGarr"]
  spec.email = ["bmcgarr@forcebrands.com"]

  spec.summary = "ForceBrands' friendly can-do command line."
  spec.description = "Update the local db from the mirrored data, check AWS credentials, and fly your X-Wing...Okay, not ALL of those things."
  spec.homepage = "https://github.com/brittanymcgarr/R2"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  # spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/brittanymcgarr/R2"
  spec.metadata["changelog_uri"] = "https://github.com/brittanymcgarr/R2/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.glob("{lib,bin}/**/*")
  spec.bindir = "bin"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_development_dependency "bundler", "~> 2.3.7"
  spec.add_development_dependency "rake", "~> 13.0.6"
  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "cucumber"
  spec.add_development_dependency "aruba"

  spec.add_dependency "thor", "~> 1.2.1"


  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
