module Zype
  # Read more at https://docs.zype.com/v1.0/reference#video-entitlements
  #
  # @since 0.15.0
  class VideoEntitlements < Zype::Base::Consumers
    # Checks if the consumer is entitled to watch the video
    #
    # @param video_id [String] ID of the video
    # @param access_token [String] Access token used to identify the consumer
    # @return Hash
    def entitled(video_id:, access_token:)
      client.execute(method: :get, path: "/videos/#{video_id}/entitled", params: { access_token: access_token })
    end

    def path
      @path = 'videos'
    end
  end
end
