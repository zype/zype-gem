require 'spec_helper'

describe Zype::Playlists, :stubbed do
  let(:client) { Zype::Client }

  describe '#all' do
    before { stub_method(method: :get) }

    it 'calls Zype::Playlists#all' do
      expect_any_instance_of(Zype::Playlists).to receive(:all)
      client.playlists.all
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.playlists.all
    end
  end

  describe '#find' do
    before { stub_method(method: :get) }

    it 'calls Zype::Playlists#find' do
      expect_any_instance_of(Zype::Playlists).to receive(:find)
      client.playlists.find(id: '340234')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.playlists.find(id: '340234')
    end
  end

  describe '#create' do
    before { stub_method(method: :post) }

    it 'calls Zype::Playlists#create' do
      expect_any_instance_of(Zype::Playlists).to receive(:create)
      client.playlists.create(params: {})
    end

    it 'calls Zype::Client#post' do
      expect_any_instance_of(Zype::Client).to receive(:post).and_call_original
      client.playlists.create(params: {})
    end
  end

  describe '#update' do
    before { stub_method(method: :put) }

    it 'calls Zype::Playlists#find' do
      expect_any_instance_of(Zype::Playlists).to receive(:update)
      client.playlists.update(id: '340234', params: {})
    end

    it 'calls Zype::Client#put' do
      expect_any_instance_of(Zype::Client).to receive(:put).and_call_original
      client.playlists.update(id: '340234', params: {})
    end
  end

  describe '#destroy' do
    before { stub_method(method: :delete) }

    it 'calls Zype::Playlists#destroy' do
      expect_any_instance_of(Zype::Playlists).to receive(:delete)
      client.playlists.delete(id: '340234')
    end

    it 'calls Zype::Client#destroy' do
      expect_any_instance_of(Zype::Client).to receive(:delete).and_call_original
      client.playlists.delete(id: '340234')
    end
  end

  describe '#relationships' do
    before { stub_method(method: :get) }

    it 'calls Zype::Playlists#relationships' do
      expect_any_instance_of(Zype::Playlists).to receive(:relationships)
      client.playlists.relationships
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.playlists.relationships
    end
  end

  describe '#add_videos' do
    before { stub_method(method: :put) }

    it 'calls Zype::Playlists#add_videos' do
      expect_any_instance_of(Zype::Playlists).to receive(:add_videos)
      client.playlists.add_videos(id: '12345', video_ids: ['12345'])
    end

    it 'calls Zype::Client#put' do
      expect_any_instance_of(Zype::Client).to receive(:put).and_call_original
      client.playlists.add_videos(id: '12345', video_ids: ['12345'])
    end
  end

  describe '#remove_videos' do
    before { stub_method(method: :put) }

    it 'calls Zype::Playlists#add_videos' do
      expect_any_instance_of(Zype::Playlists).to receive(:remove_videos)
      client.playlists.remove_videos(id: '12345', video_ids: ['12345'])
    end

    it 'calls Zype::Client#put' do
      expect_any_instance_of(Zype::Client).to receive(:put).and_call_original
      client.playlists.remove_videos(id: '12345', video_ids: ['12345'])
    end
  end

  describe '#path' do
    it 'returns playlists' do
      expect(client.playlists.send(:path)).to eq('playlists')
    end
  end
end
