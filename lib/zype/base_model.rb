module Zype
  class BaseModel
    attr_reader :client, :path
    ACCEPTED_KEYS = %i(api_key app_key)
    class InvalidKey < StandardError; end

    def initialize(auth_method='api_key')
      @client = Client.new(auth_method)
      @path = generate_path
    end

    # Returns all objects for given class
    #
    # @param params [Hash] the metadata to filter objects by
    # @return [Array<Hash>] the objects returned from the API
    def all(params: {})
      client.execute(method: :get, path: "/#{path}", params: params)
    end

    # Returns object matching ID
    #
    # @param id [String] the ID of the object
    # @return [Hash] the object returned from the API
    def find(id:)
      client.execute(method: :get, path: "/#{path}/#{id}")
    end

    # Creates a new object via the API
    #
    # @param params [Hash] the properties of the object
    # @return [Hash] the newly created object
    def create(params:)
      client.execute(method: :post, path: "/#{path}", params: params)
    end

    # Updates an existing object via the API
    #
    # @param id [String] the ID of the object
    # @param params [Hash] the properties to be updated
    # @return [Hash] the updated object
    def update(id:, params:)
      client.execute(method: :put, path: "/#{path}/#{id}", params: params)
    end

    # Deletes an existing object via the API
    #
    # @param id [String] the ID of the object
    # @return [Hash] the deleted object
    def delete(id:)
      client.execute(method: :delete, path: "/#{path}/#{id}")
    end

    # Sets the authentication method for calling the API
    #
    # @param auth_method [String] one of 'api_key' or 'app_key'
    def auth=(auth_method)
      raise InvalidKey unless ACCEPTED_KEYS.include?(auth_method.to_sym)

      @client = Client.new(auth_method)
    end

    private

    def generate_path
      split = self.class.name.split(/(?=[A-Z])/)
      split[1..split.length].join('_').downcase
    end
  end
end
