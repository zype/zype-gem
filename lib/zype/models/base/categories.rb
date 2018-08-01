module Zype
  module Base
    # Any categories nested routes will inherit from this class
    class Categories < Zype::BaseModel
      # Returns all objects for given class
      #
      # @param category_id [String] the ID of the category
      # @return [Array<Hash>] the objects returned from the API
      def all(category_id:)
        client.execute(method: :get, path: "/categories/#{category_id}/#{path}")
      end

      # Returns object matching ID
      #
      # @param category_id [String] the ID of the category
      # @param id [String] the ID of the object
      # @return [Hash] the object returned from the API
      def find(category_id:, id:)
        client.execute(method: :get, path: "/categories/#{category_id}/#{path}/#{id}")
      end

      # Creates a new object via the API.
      #
      # @param category_id [String] ID of the category to assign to the object
      # @param params [Hash] the properties of the object
      # @return [Hash] the newly created object
      def create(category_id:, params:)
        client.execute(method: :post, path: "/categories/#{category_id}/#{path}", params: params)
      end

      # Updates an existing object via the API
      #
      # @param category_id [String] the ID of the category
      # @param params [Hash] the properties to be updated
      # @return [Hash] the updated object
      def update(category_id:, id:, params:)
        client.execute(method: :put, path: "/categories/#{category_id}/#{path}/#{id}", params: params)
      end

      # Deletes an existing object via the API
      #
      # @param category_id [String] the ID of the category
      # @param id [String] the ID of the object
      # @return [Hash] the deleted object
      def delete(category_id:, id:)
        client.execute(method: :delete, path: "/categories/#{category_id}/#{path}/#{id}")
      end
    end
  end
end
