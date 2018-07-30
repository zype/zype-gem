module Zype
  # Read more at https://docs.zype.com/v1.0/reference#users.
  # This class does not support the delete method.
  #
  # @since 0.13.0
  class Users < Zype::BaseModel
    %i[delete].each do |mtd|
      send(:define_method, mtd) do
        raise NoMethodError
      end
    end

    # Remove a user from a site property. This does not delete the user.
    # Read more at https://docs.zype.com/v1.0/reference#removeuser
    #
    # @param id [String] the ID of the user
    # @return [Hash] the user object
    def remove(id:)
      client.execute(method: :put, path: "/#{path}/#{id}/remove")
    end

    private

    def path
      @path = 'site/users'
    end
  end
end
