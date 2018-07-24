require 'httparty'
require './lib/zype/configuration.rb'
require './lib/zype/client.rb'
require './lib/zype/client/player_client.rb'
require './lib/zype/client/api_client.rb'
require './lib/zype/base_model.rb'
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
