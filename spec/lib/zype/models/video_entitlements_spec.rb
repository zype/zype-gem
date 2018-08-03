require 'spec_helper'

describe Zype::VideoEntitlements, :stubbed do
  let(:client) { Zype::Client }

  describe '#all' do
    before { stub_method(method: :get) }

    it 'calls Zype::VideoEntitlements#all' do
      expect_any_instance_of(Zype::VideoEntitlements).to receive(:all)
      client.video_entitlements.all(consumer_id: '3049203')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.video_entitlements.all(consumer_id: '3049203')
    end
  end

  describe '#find' do
    before { stub_method(method: :get) }

    it 'calls Zype::VideoEntitlements#find' do
      expect_any_instance_of(Zype::VideoEntitlements).to receive(:find)
      client.video_entitlements.find(consumer_id: '3049203', id: '340234')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.video_entitlements.find(consumer_id: '3049203', id: '340234')
    end
  end

  describe '#create' do
    before { stub_method(method: :post) }

    it 'calls Zype::VideoEntitlements#create' do
      expect_any_instance_of(Zype::VideoEntitlements).to receive(:create)
      client.video_entitlements.create(consumer_id: '3049203', params: {})
    end

    it 'calls Zype::Client#post' do
      expect_any_instance_of(Zype::Client).to receive(:post).and_call_original
      client.video_entitlements.create(consumer_id: '3049203', params: {})
    end
  end

  describe '#update' do
    before { stub_method(method: :put) }

    it 'calls Zype::VideoEntitlements#update' do
      expect_any_instance_of(Zype::VideoEntitlements).to receive(:update)
      client.video_entitlements.update(consumer_id: '3049203', id: '340234', params: {})
    end

    it 'calls Zype::Client#put' do
      expect_any_instance_of(Zype::Client).to receive(:put).and_call_original
      client.video_entitlements.update(consumer_id: '3049203', id: '340234', params: {})
    end
  end

  describe '#delete' do
    before { stub_method(method: :delete) }

    it 'calls Zype::VideoEntitlements#delete' do
      expect_any_instance_of(Zype::VideoEntitlements).to receive(:delete)
      client.video_entitlements.delete(consumer_id: '3049203', id: '340234')
    end

    it 'calls Zype::Client#delete' do
      expect_any_instance_of(Zype::Client).to receive(:delete).and_call_original
      client.video_entitlements.delete(consumer_id: '3049203', id: '340234')
    end
  end

  describe '#path' do
    it 'returns videos' do
      expect(client.video_entitlements.send(:path)).to eq('videos')
    end
  end
end
