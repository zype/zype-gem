module Zype
  class AnalyticsClient < Zype::Client
    def initialize(auth_method = 'api_key')
      @headers = { 'Content-Type' => 'application/json' }
      self.class.base_uri Zype.configuration.analytics_host
    end

    def get(path:, params:)
      params.merge!(api_key: Zype.configuration.api_key)
      super(path: path, params: params)
    end
  end
end
