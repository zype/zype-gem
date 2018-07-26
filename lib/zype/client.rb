module Zype
  class Client
    attr_reader :headers
    include HTTParty
    class NoApiKey < StandardError; end
    class NoAppKey < StandardError; end
    class NotFound < StandardError; end
    class ServerError < StandardError; end
    class Unauthorized < StandardError; end
    class UnprocessableEntity < StandardError; end

    # for error types not explicity mapped
    class GenericError < StandardError; end
    ERROR_TYPES = {
      401 => Unauthorized,
      404 => NotFound,
      422 => UnprocessableEntity,
      500 => ServerError
    }.freeze

    # Automatically converts all files in lib/zype/models to be used as methods
    class << self
      Dir["lib/zype/models/*.rb"].each do |file|
        model = file[/.*\/(.*?).rb$/, 1]
        define_method model do
          constant = model.split("_").map { |s| s.capitalize }.join("")
          Module.const_get("Zype::#{constant}").new
        end
      end
    end

    def get(path:, params: {})
      self.class.get(path, { query: params, headers: headers })
    end

    def post(path:, params: {})
      self.class.post(path, { query: params, headers: headers })
    end

    def put(path:, params: {})
      self.class.put(path, { query: params, headers: headers })
    end

    def delete(path:, params: _)
      self.class.delete(path, { headers: headers })
    end

    def execute(method:, path:, params: {})
      if Zype.configuration.api_key.to_s.empty?
        raise NoApiKey if Zype.configuration.app_key.to_s.empty?
      end

      resp = self.send(method, path: path, params: params)
      if resp.success?
        resp['response'].nil? ? resp.parsed_response : resp['response']
      else
        error!(code: resp.code, message: resp['message'])
      end
    end

    private

    def error!(code:, message:)
      error_type = ERROR_TYPES[code] || GenericError
      raise error_type.new(message)
    end

    def authentication(auth_method)
      if auth_method.to_sym == :api_key
        { 'x-zype-key' => Zype.configuration.api_key }
      else
        { 'x-zype-app-key' => Zype.configuration.app_key }
      end
    end
  end
end
