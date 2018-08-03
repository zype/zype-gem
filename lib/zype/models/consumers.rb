module Zype
  # Read more at https://docs.zype.com/v1.0/reference#consumers
  #
  # @since 0.15.0
  class Consumers < Zype::BaseModel
    # Initiate consumer forgot password flow.
    # Consumer will receive forgot password email.
    #
    # @param email [String] email of the consumer
    # @return [Hash] the consumer returned from the API
    def forgot_password(email:)
      client.execute(method: :put, path: "/#{path}/forgot_password", params: { email: email })
    end
  end
end
