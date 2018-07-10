module Zype
  class LiveEvents < Zype::BaseModel
    def start(id:)
      client.execute(method: :put, path: "/live_events/#{id}/start")
    end

    def stop(id:)
      client.execute(method: :put, path: "/live_events/#{id}/stop")
    end

    def archive(id:)
      client.execute(method: :put, path: "/live_events/#{id}/archive")
    end
  end
end
