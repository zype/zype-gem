module Zype
  class ApiClient < Zype::Client
    def initialize(auth_method = 'api_key')
      @headers = { 'Content-Type' => 'application/json' }.merge(authentication(auth_method))
      self.class.base_uri Zype.configuration.host
    end
  end
end
