module Zype
  class Encoders < Zype::BaseModel
    def find(encoder_name:)
      client.execute(method: :get, path: "/live/encoders/#{encoder_name}")
    end
    
    def start(encoder_name:)
      client.execute(method: :post, path: "/live/encoders/#{encoder_name}/start")
    end

    def stop(encoder_name:)
      client.execute(method: :post, path: "/live/encoders/#{encoder_name}/stop")
    end

    def path
      @path = "live/encoders"
    end
  end
end
