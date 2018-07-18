module Zype
  # Work with subtitles for a specific video
  #
  # @since 0.7.0
  class Subtitles < Zype::BaseModel
    # Returns all subtitles for given video - add params to filter
    #
    # @param video_id [String] ID of video to get subtitles for
    # @param params [Hash] the metadata to filter objects by
    # @return [Array<Hash>] the subtitles returned from the API
    def all(video_id:, params: {})
      client.execute(method: :get, path: "/videos/#{video_id}/subtitles", params: params)
    end

    # Returns subtitle matching ID
    #
    # @param id [String] the ID of the object
    # @param video_id [String] ID of the video the subtitle belongs to
    # @return [Hash] the object returned from the API
    def find(id:, video_id:)
      client.execute(method: :get, path: "/videos/#{video_id}/subtitles/#{id}")
    end

    # Creates a new subtitle via the API.
    # Files must be base64 encoded
    # @example to base64 encode a file with Ruby
    #   require 'base64'
    #   Base64.encode64(File.open("file_path", "rb").read)
    #
    # @param video_id [String] ID of the video to assign to the subtitle
    # @param params [Hash] the properties of the subtitle
    # @return [Hash] the newly created subtitle
    def create(video_id:, params:)
      client.execute(method: :post, path: "/videos/#{video_id}/subtitles", params: params)
    end

    # Updates an existing subtitle via the API
    #
    # @param id [String] the ID of the object
    # @param video_id [String] ID of the video the subtitle belongs to
    # @param params [Hash] the properties to be updated
    # @return [Hash] the updated subtitle
    def update(id:, video_id:, params:)
      client.execute(method: :put, path: "/videos/#{video_id}/subtitles/#{id}", params: params)
    end

    # Deletes an existing subtitle via the API
    #
    # @param id [String] the ID of the object
    # @param video_id [String] ID of the video the subtitle belongs to
    # @return [Hash] the deleted subtitle
    def delete(id:, video_id:)
      client.execute(method: :delete, path: "/videos/#{video_id}/subtitles/#{id}")
    end
  end
end
