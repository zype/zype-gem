module Zype
  module Base
    # Any videos nested routes will inherit from this class
    class Videos < Zype::BaseModel
      # Returns all objects for given class
      #
      # @param video_id [String] the ID of the video
      # @return [Array<Hash>] the objects returned from the API
      def all(video_id:)
        client.execute(method: :get, path: "/videos/#{video_id}/#{path}")
      end

      # Returns object matching ID
      #
      # @param video_id [String] the ID of the video
      # @param id [String] the ID of the object
      # @return [Hash] the object returned from the API
      def find(video_id:, id:)
        client.execute(method: :get, path: "/videos/#{video_id}/#{path}/#{id}")
      end

      # Creates a new object via the API.
      #
      # @param video_id [String] ID of the video to assign to the object
      # @param params [Hash] the properties of the object
      # @return [Hash] the newly created object
      def create(video_id:, params:)
        client.execute(method: :post, path: "/videos/#{video_id}/#{path}", params: params)
      end

      # Updates an existing object via the API
      #
      # @param id [String] the ID of the object
      # @param params [Hash] the properties to be updated
      # @return [Hash] the updated object
      def update(video_id:, id:, params:)
        client.execute(method: :put, path: "/videos/#{video_id}/#{path}/#{id}", params: params)
      end

      # Deletes an existing object via the API
      #
      # @param video_id [String] the ID of the video
      # @param id [String] the ID of the object
      # @return [Hash] the deleted object
      def delete(video_id:, id:)
        client.execute(method: :delete, path: "/videos/#{video_id}/#{path}/#{id}")
      end
    end
  end
end
