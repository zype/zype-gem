module Zype
  # https://docs.zype.com/v1.0/reference#plans
  #
  # @since 0.16.0
  class Plans < Zype::BaseModel
    # Only for tiered subscription plans.
    # Read more here https://docs.zype.com/v1.0/reference#addplaylists-1
    #
    # @param id [String] ID of the plan
    # @param params [Hash] should be a hash with playlist_ids as a key
    # return [Hash]
    def add_playlists(id:, params:)
      client.execute(method: :put, path: "/#{path}/#{id}/add_playlists", params: params)
    end

    # This will remove playlists from the specified plan
    #
    # @param id [String] ID of the plan
    # @param params [Hash] should be a hash with playlist_ids as a key
    # return [Hash]
    def remove_playlists(id:, params:)
      client.execute(method: :put, path: "/#{path}/#{id}/remove_playlists", params: params)
    end
  end
end
