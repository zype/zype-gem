module Zype
  module Base
    # Any playlist nested routes will inherit from this class
    class Playlists < Zype::BaseModel
      # Returns all objects for given class
      #
      # @param playlist_id [String] the ID of the playlist
      # @return [Array<Hash>] the objects returned from the API
      def all(playlist_id:)
        client.execute(method: :get, path: "/playlists/#{playlist_id}/#{path}")
      end

      # Returns object matching ID
      #
      # @param playlist_id [String] the ID of the playlist
      # @param id [String] the ID of the object
      # @return [Hash] the object returned from the API
      def find(playlist_id:, id:)
        client.execute(method: :get, path: "/playlists/#{playlist_id}/#{path}/#{id}")
      end

      # Creates a new object via the API.
      #
      # @param playlist_id [String] ID of the playlist to assign to the object
      # @param params [Hash] the properties of the object
      # @return [Hash] the newly created object
      def create(playlist_id:, params:)
        client.execute(method: :post, path: "/playlists/#{playlist_id}/#{path}", params: params)
      end

      # Updates an existing object via the API
      #
      # @param playlist_id [String] the ID of the playlist
      # @param params [Hash] the properties to be updated
      # @return [Hash] the updated object
      def update(playlist_id:, id:, params:)
        client.execute(method: :put, path: "/playlists/#{playlist_id}/#{path}/#{id}", params: params)
      end

      # Deletes an existing object via the API
      #
      # @param playlist_id [String] the ID of the playlist
      # @param id [String] the ID of the object
      # @return [Hash] the deleted object
      def delete(playlist_id:, id:)
        client.execute(method: :delete, path: "/playlists/#{playlist_id}/#{path}/#{id}")
      end
    end
  end
end
