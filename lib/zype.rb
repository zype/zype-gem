require 'httparty'
require 'zype/configuration'
require 'zype/client'
require 'zype/base_model'
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
