require 'bundler/setup'
Bundler.setup

require 'secrets'

RSpec.configure do |config|
  config.order = :random
  config.expect_with :rspec do |expectations|
    expectations.syntax = :expect
  end
end
