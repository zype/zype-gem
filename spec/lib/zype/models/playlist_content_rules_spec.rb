require 'spec_helper'

describe Zype::PlaylistContentRules, :stubbed do
  let(:client) { Zype::Client }

  describe '#all' do
    before { stub_method(method: :get) }

    it 'calls Zype::PlaylistContentRules#all' do
      expect_any_instance_of(Zype::PlaylistContentRules).to receive(:all)
      client.playlist_content_rules.all(playlist_id: '12345')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.playlist_content_rules.all(playlist_id: '12345')
    end
  end

  describe '#find' do
    before { stub_method(method: :get) }

    it 'calls Zype::PlaylistContentRules#find' do
      expect_any_instance_of(Zype::PlaylistContentRules).to receive(:find)
      client.playlist_content_rules.find(id: '340234', playlist_id: '12345')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.playlist_content_rules.find(id: '340234', playlist_id: '12345')
    end
  end

  describe '#create' do
    before { stub_method(method: :post) }

    it 'calls Zype::PlaylistContentRules#create' do
      expect_any_instance_of(Zype::PlaylistContentRules).to receive(:create)
      client.playlist_content_rules.create(playlist_id: '12345', params: {})
    end

    it 'calls Zype::Client#post' do
      expect_any_instance_of(Zype::Client).to receive(:post).and_call_original
      client.playlist_content_rules.create(playlist_id: '12345', params: {})
    end
  end

  describe '#update' do
    before { stub_method(method: :put) }

    it 'calls Zype::PlaylistContentRules#find' do
      expect_any_instance_of(Zype::PlaylistContentRules).to receive(:update)
      client.playlist_content_rules.update(id: '340234', playlist_id: '12345', params: {})
    end

    it 'calls Zype::Client#put' do
      expect_any_instance_of(Zype::Client).to receive(:put).and_call_original
      client.playlist_content_rules.update(id: '340234', playlist_id: '12345', params: {})
    end
  end

  describe '#destroy' do
    before { stub_method(method: :delete) }

    it 'calls Zype::PlaylistContentRules#destroy' do
      expect_any_instance_of(Zype::PlaylistContentRules).to receive(:delete)
      client.playlist_content_rules.delete(id: '340234', playlist_id: '12345')
    end

    it 'calls Zype::Client#destroy' do
      expect_any_instance_of(Zype::Client).to receive(:delete).and_call_original
      client.playlist_content_rules.delete(id: '340234', playlist_id: '12345')
    end
  end

  describe '#path' do
    it 'returns content_rules' do
      expect(client.playlist_content_rules.send(:path)).to eq('content_rules')
    end
  end
end
