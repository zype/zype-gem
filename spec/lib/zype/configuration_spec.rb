require 'spec_helper'

describe Zype::Configuration do
  let(:configuration) { Zype::Configuration.new }
  it 'initializes with a nil value for api_key' do
    expect(configuration.api_key).to eq(nil)
  end

  it 'initializes with api.zype.com for host' do
    expect(configuration.host).to eq('https://api.zype.com')
  end

  context 'When setting the api_key' do
    before { Zype.configuration.api_key = "zzz"}
    it 'keeps the value it was set to' do
      expect(Zype.configuration.api_key).to eq("zzz")
    end
  end

  context 'when setting the host' do
    before { Zype.configuration.host = "http://api.dev.zype.com"}
    it 'keeps the value it was set to' do
      expect(Zype.configuration.host).to eq("http://api.dev.zype.com")
    end
  end
end
