module Zype
  # Read more at https://docs.zype.com/v1.0/reference#playlists
  # 
  # @since 0.4.0
  class Playlists < Zype::BaseModel
    # Returns videos for a playlist
    #
    # @param id [String] the ID of the playlist
    # @return [Array<Hash>] an array of video objects
    def videos(id:)
      client.execute(method: :get, path: "/playlists/#{id}/videos")
    end

    # Adds videos to a playlist
    #
    # @param id [String] the ID of the playlist
    # @param video_ids [Array<String>] the video IDs to add to the playlist
    # @return [Array<Hash>] an array of video objects
    def add_videos(id:, video_ids:)
      client.execute(method: :put, path: "/playlists/#{id}/add_videos", params: { video_id: video_ids })
    end

    # Removes videos from a playlist
    #
    # @param id [String] the ID of the playlist
    # @param video_ids [Array<String>] the video IDs to remove to the playlist
    # @return [Array<Hash>] an array of video objects
    def remove_videos(id:, video_ids:)
      client.execute(method: :put, path: "/playlists/#{id}/remove_videos", params: { video_id: video_ids })
    end

    # Returns all playlists from the API
    #
    # @return [Array<Hash>] all playlists in relational order
    def relationships
      client.execute(method: :get, path: '/playlists/relationships')
    end
  end
end
