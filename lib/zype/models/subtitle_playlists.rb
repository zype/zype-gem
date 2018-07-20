module Zype
  # The Subtitle Playlists API allows users to integrate subtitles with HLS manifests from a Zype video source.
  # It’s a simple way to add subtitles which will be supported in all platforms that implement the Apple HLS specification.
  # This class does not support all, find and update methods.
  # Read more at https://docs.zype.com/v1.0/reference#subtitle-playlists
  #
  # @since 0.7.0
  class SubtitlePlaylists < Zype::BaseModel
    %i[all find update].each do |mtd|
      send(:define_method, mtd) do
        raise NoMethodError
      end
    end

    # Creates a new subtitle via the API.
    # Files must be hosted and be accessible with a URL
    #
    # @param video_id [String] ID of the video to assign to the subtitle
    # @param params [Hash] the properties of the subtitle
    # @return [Hash] the newly created subtitle
    def create(video_id:, params:)
      client.execute(method: :post, path: "/videos/#{video_id}/subtitle_playlists", params: params)
    end

    # Deletes an existing subtitle via the API
    #
    # @param language [String] language of the playlist - must be full name - not code
    # @param video_id [String] ID of the video the subtitle belongs to
    # @return [Hash] the deleted subtitle
    def delete(language:, video_id:)
      client.execute(method: :delete, path: "/videos/#{video_id}/subtitle_playlists/#{language}")
    end
  end
end
