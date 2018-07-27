module Zype
  # Read more at https://docs.zype.com/v1.0/reference#video-imports
  #
  # @since 0.12.0
  class VideoImports < Zype::BaseModel
    %i[create update delete].each do |mtd|
      send(:define_method, mtd) do
        raise NoMethodError
      end
    end

    # Attach a video to a video import
    #
    # @param id [String] the ID of the video import
    # @return [Hash] the video import object
    def add_video(id:)
      client.execute(method: :put, path: "/#{path}/#{id}/add_video")
    end
  end
end
