module Zype
  # @since 0.1.0
  class Encoders < Zype::BaseModel
    # Returns encoder matching the encoder_name
    #
    # @param encoder_name [String] the name of the encoder
    # @return [Hash] properties of the encoder
    def find(encoder_name:)
      client.execute(method: :get, path: "/live/encoders/#{encoder_name}")
    end

    # Starts encoder matching the encoder_name
    #
    # @param encoder_name [String] the name of the encoder
    # @return [Hash] properties of the encoder
    def start(encoder_name:)
      client.execute(method: :post, path: "/live/encoders/#{encoder_name}/start")
    end

    # Stops encoder matching the encoder_name
    #
    # @param encoder_name [String] the name of the encoder
    # @return [Hash] properties of the encoder
    def stop(encoder_name:)
      client.execute(method: :post, path: "/live/encoders/#{encoder_name}/stop")
    end

    def path
      @path = "live/encoders"
    end
  end
end
