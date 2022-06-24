# frozen_string_literal: true

# External libraries
require "tty/prompt"
require "pry"
require "version_gem/rspec"

# This library
require "service_actor/promptable"

Dir["./spec/examples/*"].sort.each { |f| require f }

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
