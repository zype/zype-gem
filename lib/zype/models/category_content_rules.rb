module Zype
  # Read more at https://docs.zype.com/v1.0/reference#category-content-rules
  #
  # @since 0.14.0
  class CategoryContentRules < Zype::Base::Categories

    private

    def path
      @path = 'content_rules'
    end
  end
end
