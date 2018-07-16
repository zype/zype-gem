require 'rubygems'
require 'bundler/setup'
require 'webmock/rspec'
require 'httparty'
require 'pry'
require 'zype'
require 'support/stubbed_methods'

RSpec.configure do |config|
  config.before(:suite) do
    Zype.configuration.api_key = '10u9GeiG_eqcJWNIQdROhA'
    Zype.configuration.app_key = 'tHbsx1kDKNDaOAEM1By'
    Zype.configuration.host = 'api.zype-core.com'
  end

  config.include StubbedMethods, :stubbed
end
