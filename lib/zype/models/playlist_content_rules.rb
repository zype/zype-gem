module Zype
  # Read more at https://docs.zype.com/v1.0/reference#playlist-content-rules
  #
  # @since 0.14.0
  class PlaylistContentRules < Zype::Base::Playlists

    private

    def path
      @path = 'content_rules'
    end
  end
end
