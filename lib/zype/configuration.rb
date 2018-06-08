module Zype
  class Configuration
    attr_accessor :api_key, :host

    def initialize
      @api_key = nil
      @host = 'api.zype.com'
    end
  end
end
