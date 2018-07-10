module Zype
  class BaseModel
    attr_reader :client, :path

    def initialize
      @client = Client.new
      @path = generate_path
    end

    def all(params: {})
      client.execute(method: :get, path: "/#{path}", params: params)
    end

    def find(id:)
      client.execute(method: :get, path: "/#{path}/#{id}")
    end

    def create(params:)
      client.execute(method: :post, path: "/#{path}", params: params)
    end

    def update(id:, params:)
      client.execute(method: :put, path: "/#{path}/#{id}", params: params)
    end

    def delete(id:)
      client.execute(method: :delete, path: "/#{path}/#{id}")
    end

    private

    def generate_path
      split = self.class.name.split(/(?=[A-Z])/)
      split[1..split.length].join('_').downcase
    end
  end
end
