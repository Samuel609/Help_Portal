require 'support/models/shared_examples.rb'
require "support/requests/shared_requests"
RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    config.formatter = RSpec::Core::Formatters::DocumentationFormatter
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end