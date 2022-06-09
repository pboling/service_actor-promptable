# frozen_string_literal: true

require_relative "lib/service_actor/promptable/version"

Gem::Specification.new do |spec|
  spec.name = "service_actor-promptable"
  spec.version = ServiceActor::Promptable::VERSION
  spec.authors = ["Peter Boling"]
  spec.email = ["peter.boling@gmail.com"]

  spec.summary = "TTY Prompt plugin for service_actor"
  spec.description = "TTY Prompt plugin for your service objects for your application logic"
  spec.homepage = "https://github.com/pboling/service_actor-promptable"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "#{spec.homepage}/tree/v#{spec.version}"
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/v#{spec.version}/CHANGELOG.md"
  spec.metadata["bug_tracker_uri"] = "#{spec.homepage}/issues"
  spec.metadata["documentation_uri"] = "https://www.rubydoc.info/gems/service_actor-promptable/#{spec.version}"
  spec.metadata["wiki_uri"] = "#{spec.homepage}/wiki"
  spec.metadata["rubygems_mfa_required"] = "true"

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir["lib/**/*.rb", "sig/**/*.rbs", "CHANGELOG.md", "CODE_OF_CONDUCT.md", "CONTRIBUTING.md",
                   "LICENSE.txt", "README.md", "rubocop.yml", "SECURITY.md"]
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Pluggable Parent
  spec.add_dependency "service_actor"

  # Tests
  spec.add_development_dependency "rspec"

  # Development Tasks
  spec.add_development_dependency "rake"

  # Debugger
  spec.add_development_dependency "pry"

  # Linting rubocop-lts v16 is a rubocop wrapper for Ruby >= 2.6,
  #   and should only be bumped when dropping old Ruby support
  # see: https://dev.to/pboling/rubocop-lts-1e31
  spec.add_development_dependency "rubocop-lts", ["~> 16.0", ">= 16.0.1"]

  # Lint RSpec code
  spec.add_development_dependency "rubocop-rspec"

  # Lint Rake tasks
  spec.add_development_dependency "rubocop-rake"

  # Add performance linting
  spec.add_development_dependency "rubocop-performance"

  # Formatter for GitHub’s code scanning
  spec.add_development_dependency "code-scanning-rubocop"

  spec.add_development_dependency "tty-prompt"
end
