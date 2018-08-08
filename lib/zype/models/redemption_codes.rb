module Zype
  # This class only supports all and create
  # Read more at https://docs.zype.com/v1.0/reference#redemption-codes
  #
  # @since 0.17.0
  class RedemptionCodes < Zype::BaseModel
    %i[find update delete].each do |mtd|
      send(:define_method, mtd) do
        raise NoMethodError
      end
    end
  end
end
