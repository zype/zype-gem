module Zype
  # This class does not support all, create, update or delete.
  # To use this class, you must set Zype.configuration.player_host.
  # Read more at https://docs.zype.com/v1.0/reference#live-manifests
  #
  # @since 0.9.0
  class LiveManifests < Zype::BaseModel
    %i[all create update delete].each do |mtd|
      send(:define_method, mtd) do
        raise NoMethodError
      end
    end

    private

    def path
      @path = 'live/manifest'
    end
  end
end
