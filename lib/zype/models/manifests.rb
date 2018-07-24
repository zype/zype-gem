module Zype
  # This class does not support all, create, update or delete.
  # To use this class, you must set Zype.configuration.player_host.
  # Read more at https://docs.zype.com/v1.0/reference#vod-manifests
  #
  # @since 0.9.0
  class Manifests < Zype::BaseModel
    %i[all create update delete].each do |mtd|
      send(:define_method, mtd) do
        raise NoMethodError
      end
    end

    # Returns contents of the manifest file.
    #
    # @param id [String] the ID of the video
    # @return [String] contents of the m3u8 manifest file
    def find(id:)
      client.execute(method: :get, path: "/manifest/#{id}.m3u8")
    end

    private

    def path
      @path = 'manifest'
    end

    def client_class
      Zype::PlayerClient
    end
  end
end
