require 'spec_helper'

describe Zype::PlaylistEntitlements, :stubbed do
  let(:client) { Zype::Client }

  describe '#all' do
    before { stub_method(method: :get) }

    it 'calls Zype::PlaylistEntitlements#all' do
      expect_any_instance_of(Zype::PlaylistEntitlements).to receive(:all)
      client.playlist_entitlements.all(consumer_id: '3049203')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.playlist_entitlements.all(consumer_id: '3049203')
    end
  end

  describe '#find' do
    before { stub_method(method: :get) }

    it 'calls Zype::PlaylistEntitlements#find' do
      expect_any_instance_of(Zype::PlaylistEntitlements).to receive(:find)
      client.playlist_entitlements.find(consumer_id: '3049203', id: '340234')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.playlist_entitlements.find(consumer_id: '3049203', id: '340234')
    end
  end

  describe '#create' do
    before { stub_method(method: :post) }

    it 'calls Zype::PlaylistEntitlements#create' do
      expect_any_instance_of(Zype::PlaylistEntitlements).to receive(:create)
      client.playlist_entitlements.create(consumer_id: '3049203', params: {})
    end

    it 'calls Zype::Client#post' do
      expect_any_instance_of(Zype::Client).to receive(:post).and_call_original
      client.playlist_entitlements.create(consumer_id: '3049203', params: {})
    end
  end

  describe '#update' do
    before { stub_method(method: :put) }

    it 'calls Zype::PlaylistEntitlements#update' do
      expect_any_instance_of(Zype::PlaylistEntitlements).to receive(:update)
      client.playlist_entitlements.update(consumer_id: '3049203', id: '340234', params: {})
    end

    it 'calls Zype::Client#put' do
      expect_any_instance_of(Zype::Client).to receive(:put).and_call_original
      client.playlist_entitlements.update(consumer_id: '3049203', id: '340234', params: {})
    end
  end

  describe '#delete' do
    before { stub_method(method: :delete) }

    it 'calls Zype::PlaylistEntitlements#delete' do
      expect_any_instance_of(Zype::PlaylistEntitlements).to receive(:delete)
      client.playlist_entitlements.delete(consumer_id: '3049203', id: '340234')
    end

    it 'calls Zype::Client#delete' do
      expect_any_instance_of(Zype::Client).to receive(:delete).and_call_original
      client.playlist_entitlements.delete(consumer_id: '3049203', id: '340234')
    end
  end

  describe '#path' do
    it 'returns playlists' do
      expect(client.playlist_entitlements.send(:path)).to eq('playlists')
    end
  end
end
