module Zype
  class Encoders < Zype::BaseModel

    def all
      client.execute(method: :get, path: '/live/encoders')
    end

    def find(encoder_name:)
      client.execute(method: :get, path: "/live/encoders/#{encoder_name}")
    end

    def start(encoder_name:)
      client.execute(method: :post, path: "/live/encoders/#{encoder_name}/start")
    end

    def stop(encoder_name:)
      client.execute(method: :post, path: "/live/encoders/#{encoder_name}/stop")
    end
  end
end
