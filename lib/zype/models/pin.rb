module Zype
  # Read more at https://docs.zype.com/v1.0/reference#device-linking
  #
  # @since 0.15.0
  class Pin < Zype::BaseModel
    # Retrieve the pin for the device
    #
    # @param linked_device_id [String]
    # @return [Hash] the device pin
    def status(linked_device_id:)
      client.execute(method: :get, path: '/pin/status', params: { linked_device_id: linked_device_id })
    end

    # Create the device pin
    #
    # @param linked_device_id [String]
    # @return [Hash] the device pin
    def acquire(linked_device_id:)
      client.execute(method: :post, path: '/pin/acquire', params: { linked_device_id: linked_device_id })
    end

    #
    # @return [Hash] the consumer
    def link(consumer_id:, pin:)
      client.execute(method: :put, path: '/pin/link', params: { consumer_id: consumer_id, pin: pin })
    end

    # @return [Hash] the consumer
    def unlink(consumer_id:, pin:)
      client.execute(method: :put, path: '/pin/unlink', params: { consumer_id: consumer_id, pin: pin })
    end
  end
end
