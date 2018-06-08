module Zype
  class LiveEvents < Zype::BaseModel

    def all(params: {})
      client.execute(method: :get, path: '/live_events', params: params)
    end

    def find(id:)
      client.execute(method: :get, path: "/live_events/#{id}")
    end

    def create(params:)
      client.execute(method: :post, path: '/live_events', params: params)
    end

    def update(id:, params:)
      client.execute(method: :put, path: "/live_events/#{id}", params: params)
    end

    def delete(id:)
      client.execute(method: :delete, path: "/live_events/#{id}")
    end
  end
end
