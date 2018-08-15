module Zype
  # Read more at https://docs.zype.com/v1.0/reference#oauth-1
  # This class only supports create and status methods
  #
  # To use this class, you must set `login_host`
  # @since 0.19.0
  class Oauth < Zype::BaseModel
    %i[all find update delete].each do |mtd|
      send(:define_method, mtd) do
        raise NoMethodError
      end
    end
    # Check the status of the current access token
    #
    # @param access_token [String] current access token
    # @return [Hash] information about the token. When it expires, etc.
    def status(access_token:)
      client.execute(method: :get, path: "/#{path}/info", params: { access_token: access_token })
    end

    private

    def path
      @path = 'oauth/token'
    end

    def client_class
      Zype::LoginClient
    end
  end
end
