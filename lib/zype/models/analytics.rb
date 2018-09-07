module Zype
  # This class only supports stream_hours
  # Read more at https://docs.zype.com/v1.0/reference#stream-hours
  #
  # @since 0.20.0
  class Analytics < BaseModel
    # Returns all objects for given class
    #
    # @example params object might look like:
    #   params = {
    #     filters: {
    #       start_date_gte: "2018-08-12 10:00",
    #       start_date_lte: "2018-08-13"
    #     },
    #     group_by: ['video_id']
    #     },
    #     view_mode: 'detailed'
    #   }
    # @param params [Hash] the metadata to filter objects by
    # @return [Hash] "data" will be the key, pointing to an array
    # @example
    #   # Return value
    #   {
    #     "data" => []
    #   }
    def stream_hours(params: {})
      client.execute(method: :get, path: '/stream_hours', params: params)
    end

    private

    def client_class
      Zype::AnalyticsClient
    end
  end
end
