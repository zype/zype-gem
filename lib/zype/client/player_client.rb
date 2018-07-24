module Zype
  class PlayerClient < Zype::Client
    def initialize(auth_method = 'api_key')
      @headers = { 'Content-Type' => 'application/json' }.merge(authentication(auth_method))
      self.class.base_uri Zype.configuration.player_host
    end
  end
end
