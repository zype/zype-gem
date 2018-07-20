module Zype
  # Read more at https://docs.zype.com/v1.0/reference#live-events
  #
  # @since 0.1.0
  class LiveEvents < Zype::BaseModel
    # Starts broadcasting a live event
    #
    # @param id [String] the ID of the live event
    # @return [Hash] the live event
    def start(id:)
      client.execute(method: :put, path: "/live_events/#{id}/start")
    end

    # Stops broadcasting a live event
    #
    # @param id [String] the ID of the live event
    # @return [Hash] the live event
    def stop(id:)
      client.execute(method: :put, path: "/live_events/#{id}/stop")
    end

    # Archives the live event
    #
    # @param id [String] the ID of the live event
    # @return [Hash] the live event
    def archive(id:)
      client.execute(method: :put, path: "/live_events/#{id}/archive")
    end
  end
end
