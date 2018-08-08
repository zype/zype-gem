module Zype
  # This class only supports all, create, delete
  # Read more at https://docs.zype.com/v1.0/reference#video-favorites
  #
  # @since 0.17.0
  class VideoFavorites < Zype::Base::Consumers
    %i[find update].each do |mtd|
      send(:define_method, mtd) do
        raise NoMethodError
      end
    end
  end
end
