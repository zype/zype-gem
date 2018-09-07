require 'httparty'
require 'zype/configuration.rb'
require 'zype/models.rb'
require 'zype/client.rb'
require 'zype/client/player_client.rb'
require 'zype/client/api_client.rb'
require 'zype/client/login_client.rb'
require 'zype/client/analytics_client.rb'
require 'zype/base_model.rb'

Dir[File.join(__dir__, '../lib/zype/models/base', '*.rb')].each { |file| require file }
Dir[File.join(__dir__, '../lib/zype/models', '*.rb')].each { |file| require file }

module Zype
  class << self
    def configuration
      @configuration ||= Configuration.new
    end

    def configure
      yield(configuration)
    end
  end
end
