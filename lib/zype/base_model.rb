module Zype
  class BaseModel
    attr_reader :client

    def initialize
      @client ||= Client.new
    end
  end
end
