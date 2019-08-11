# frozen_string_literal: true

require 'bundler/setup'
require 'coverage/badge'

if ENV['CI'] == 'true'
  require 'simplecov'

  SimpleCov.start 'rails' do
    # require 'coverage-badge'

    SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new(
      [
        SimpleCov::Formatter::HTMLFormatter,
        Coverage::Badge::Formatter
      ]
    )
  end
end

RSpec.configure do |config|
  config.example_status_persistence_file_path = 'coverage/.rspec_status'
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
