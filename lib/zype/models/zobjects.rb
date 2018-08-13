module Zype
  # Read more at https://docs.zype.com/v1.0/reference#zobject
  #
  # @since 0.18.0
  class Zobjects < Zype::BaseModel
    # Add videos to a Zobject
    #
    # @param id [String] The ID of the Zobject
    # @param video_ids [Array<String>] The IDs of the videos you wish to add
    # @param type [String] The title of the Zobject Type
    # @return [Hash] the zobject
    def add_videos(id:, video_ids:, type:)
      client.execute(method: :put, path: "/#{path}/#{id}/add_videos", params: {video_id: video_ids, zobject_type: type})
    end
  end
end
