module Zype
  class BaseModel
    attr_reader :client, :path

    def initialize
      @client = Client.new
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

    private

    def generate_path
      split = self.class.name.split(/(?=[A-Z])/)
      split[1..split.length].join('_').downcase
    end
  end
end
