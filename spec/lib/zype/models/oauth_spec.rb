require 'spec_helper'

describe Zype::Oauth, :stubbed do
  let(:client) { Zype::Client }

  describe '#status ' do
    before { stub_method(method: :get) }

    it 'calls Zype::Oauth#status' do
      expect_any_instance_of(Zype::Oauth).to receive(:status)
      client.oauth.status(access_token: '23409238492')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.oauth.status(access_token: '23409238492')
    end
  end

  describe '#create' do
    before { stub_method(method: :post) }

    it 'calls Zype::Oauth#post' do
      expect_any_instance_of(Zype::Oauth).to receive(:create)
      client.oauth.create(params: {})
    end

    it 'calls Zype::Client#post' do
      expect_any_instance_of(Zype::Client).to receive(:post).and_call_original
      client.oauth.create(params: {})
    end
  end

  describe 'undefined methods' do
    it 'should raise a NoMethodError for unsupported methods' do
      %i[all find update delete].each do |mtd|
        expect { client.oauth.send(mtd) }.to raise_error(NoMethodError)
      end
    end
  end

  describe '#path' do
    it 'returns oauth/token' do
      expect(client.oauth.send(:path)).to eq('oauth/token')
    end
  end
end
