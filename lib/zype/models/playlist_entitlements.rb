module Zype
  # Read more at https://docs.zype.com/v1.0/reference#playlist-entitlements
  #
  # @since 0.15.0
  class PlaylistEntitlements < Zype::Base::Consumers

    private

    def path
      @path = 'playlists'
    end
  end
end
