module Zype
  module Base
    # Any consumer nested routes will inherit from this class
    class Consumers < Zype::BaseModel
      # Returns all objects for given class
      #
      # @param consumer_id [String] the ID of the consumer
      # @return [Array<Hash>] the objects returned from the API
      def all(consumer_id:)
        client.execute(method: :get, path: "/consumers/#{consumer_id}/#{path}")
      end

      # Returns object matching ID
      #
      # @param consumer_id [String] the ID of the consumer
      # @param id [String] the ID of the object
      # @return [Hash] the object returned from the API
      def find(consumer_id:, id:)
        client.execute(method: :get, path: "/consumers/#{consumer_id}/#{path}/#{id}")
      end

      # Creates a new object via the API.
      #
      # @param consumer_id [String] ID of the consumer to assign to the object
      # @param params [Hash] the properties of the object
      # @return [Hash] the newly created object
      def create(consumer_id:, params:)
        client.execute(method: :post, path: "/consumers/#{consumer_id}/#{path}", params: params)
      end

      # Updates an existing object via the API
      #
      # @param consumer_id [String] the ID of the consumer
      # @param params [Hash] the properties to be updated
      # @return [Hash] the updated object
      def update(consumer_id:, id:, params:)
        client.execute(method: :put, path: "/consumers/#{consumer_id}/#{path}/#{id}", params: params)
      end

      # Deletes an existing object via the API
      #
      # @param consumer_id [String] the ID of the consumer
      # @param id [String] the ID of the object
      # @return [Hash] the deleted object
      def delete(consumer_id:, id:)
        client.execute(method: :delete, path: "/consumers/#{consumer_id}/#{path}/#{id}")
      end
    end
  end
end
