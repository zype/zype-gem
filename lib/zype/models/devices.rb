module Zype
  # This class only supports all and find.
  # Read more at https://docs.zype.com/v1.0/reference#devices
  #
  # @since 0.8.0
  class Devices < Zype::BaseModel
    %i[create update delete].each do |mtd|
      send(:define_method, mtd) do
        raise NoMethodError
      end
    end
  end
end
