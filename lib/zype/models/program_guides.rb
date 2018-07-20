module Zype
  # Read more at https://docs.zype.com/v1.0/reference#program-guides
  #
  # @since 0.8.0
  class ProgramGuides < Zype::BaseModel
    # Returns the entries for the specified program guide
    #
    # @param id [String] the ID of the program guide
    # @return [Array<Hash>] the program guide entries
    def entries(id:)
      client.execute(method: :get, path: "/#{path}/#{id}/entries")
    end
  end
end
