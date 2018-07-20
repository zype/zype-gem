module Zype
  # Read more at https://docs.zype.com/v1.0/reference#videos
  #
  # @since 0.4.0
  class Videos < Zype::BaseModel
    # Adds zobjects to video
    #
    # @param id [String] the ID of the video
    # @param zobject_ids [Array<String>] an array of zobject IDs
    # @return [Hash] the video object
    def add_zobjects(id:, zobject_ids:)
      client.execute(method: :put, path: "/videos/#{id}/add_zobjects", params: { zobject_id: zobject_ids })
    end

    # Removes zobjects from video
    #
    # @param id [String] the ID of the video
    # @param zobject_ids [Array<String>] an array of zobject IDs
    # @return [Hash] the video object
    def remove_zobjects(id:, zobject_ids:)
      client.execute(method: :put, path: "/videos/#{id}/remove_zobjects", params: { zobject_id: zobject_ids })
    end

    # Returns the original source file for the video
    #
    # @param id [String] the ID of the video
    # @return [Hash] object containing a "url" key for the original source file
    def download(id:)
      client.execute(method: :get, path: "/videos/#{id}/download")
    end
  end
end
