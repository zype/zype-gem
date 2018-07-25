module Zype
  # This class does not support all, create, update or delete methods.
  # Read more at https://docs.zype.com/v1.0/reference#getgeoip-1
  #
  # @since 0.10.0
  class GeoIp < Zype::BaseModel
    %i[all create update delete].each do |mtd|
      send(:define_method, mtd) do
        raise NoMethodError
      end
    end
    
    # Retrieve the GeoIP object for a specific IP Address
    #
    # @param ip_address [String] value for the IP Adress you want to look up
    # @return [Hash]
    def find(ip_address:)
      client.execute(method: :get, path: "/#{path}", params: { ip_address: ip_address })
    end

    private

    def path
      @path = 'geoip'
    end
  end
end
