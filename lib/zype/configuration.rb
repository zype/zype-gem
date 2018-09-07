module Zype
  class Configuration
    attr_accessor :api_key, :host, :player_host, :login_host, :analytics_host, :app_key

    def initialize
      @api_key = nil
      @app_key = nil
      @host = 'https://api.zype.com'
      @player_host = 'https://player.zype.com'
      @login_host = 'https://login.zype.com'
      @analytics_host = 'https://analytics.zype.com/v2'
    end
  end
end
