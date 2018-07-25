module Zype
  # This class does not support all, create, update or delete methods.
  # Read more at https://docs.zype.com/v1.0/reference#players
  #
  # @since 0.10.0
  class Players < Zype::BaseModel
    %i[all create update delete].each do |mtd|
      send(:define_method, mtd) do
        raise NoMethodError
      end
    end

    # Retrieve formatted player responses
    #
    # @param id [String] ID of the video
    # @param format [String] format to return the response in. Valid options are html, js, json
    # @return [Hash|String]
    def find(id:, format:)
      client.execute(method: :get, path: "/#{path}/#{id}.#{format}")
    end

    private

    def path
      @path = 'embed'
    end

    def client_class
      Zype::PlayerClient
    end
  end
end
