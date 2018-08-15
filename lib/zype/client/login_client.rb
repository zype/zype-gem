module Zype
  class LoginClient < Zype::Client
    def initialize(_ = '')
      @headers = { 'Content-Type' => 'application/json' }
      self.class.base_uri Zype.configuration.login_host
    end

    def execute(method:, path:, params: {})
      resp = send(method, path: path, params: params)
      if resp.success?
        resp['response'].nil? ? resp.parsed_response : resp['response']
      else
        error!(code: resp.code, message: resp['message'])
      end
    end
  end
end
