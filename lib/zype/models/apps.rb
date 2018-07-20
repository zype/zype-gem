module Zype
  # This class does not support all, create, update or delete methods.
  # Read more at https://docs.zype.com/v1.0/reference#apps
  #
  # @since 0.6.0
  class Apps < Zype::BaseModel

    %i[all create update delete].each do |mtd|
      send(:define_method, mtd) do
        raise NoMethodError
      end
    end

    # Returns app that matches that app_key used in the authorization
    #
    # @return [Hash] the app returned from the API
    def find
      raise Zype::Client::NoAppKey if Zype.configuration.app_key.to_s.empty?

      client.execute(method: :get, path: '/app')
    end
  end
end
