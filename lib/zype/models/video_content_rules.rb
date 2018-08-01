module Zype
  # Read more at https://docs.zype.com/v1.0/reference#video-content-rules
  #
  # @since 0.14.0
  class VideoContentRules < Zype::Base::Videos

    private

    def path
      @path = 'content_rules'
    end
  end
end
