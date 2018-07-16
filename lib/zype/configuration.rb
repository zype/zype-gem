module Zype
  class Configuration
    attr_accessor :api_key, :host, :app_key

    def initialize
      @api_key = nil
      @app_key = nil
      @host = 'api.zype.com'
    end
  end
end
