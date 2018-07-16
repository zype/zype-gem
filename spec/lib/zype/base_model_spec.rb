require 'spec_helper'

describe Zype::BaseModel do
  let(:client) { Zype::Client }
  let(:api_key) { SecureRandom.base64 }
  let(:app_key) { SecureRandom.base64 }

  describe '#auth' do
    let(:videos) { Zype::Videos.new }
    before do
      Zype.configure do |config|
        config.api_key = api_key
        config.app_key = app_key
      end
    end

    it 'resets the headers used in the client' do
      expect(videos.client.headers).to include({ 'x-zype-key' => api_key })

      videos.auth = 'app_key'
      expect(videos.client.headers).to include({ 'x-zype-app-key' => app_key })
    end

    it 'raises an error if it is not an accepted value' do
      expect {
        videos.auth = 'invalid'
      }.to raise_error(Zype::BaseModel::InvalidKey)
    end
  end
end
