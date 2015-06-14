ENV['RAILS_ENV'] ||= 'test'
require 'spec_helper'
require File.expand_path('../../config/environment', __FILE__)
require 'rspec/rails'
require 'vcr'
require 'webmock/rspec'

WebMock.disable_net_connect!(allow_localhost: true)

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
end

VCR.configure do |config|
 config.cassette_library_dir = 'spec/vcr_cassettes'
 config.hook_into :webmock
end