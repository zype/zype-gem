require 'spec_helper'

describe Zype::Zobjects, :stubbed do
  let(:client) { Zype::Client }

  describe '#all' do
    before { stub_method(method: :get) }

    it 'calls Zype::Zobjects#all' do
      expect_any_instance_of(Zype::Zobjects).to receive(:all)
      client.zobjects.all
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.zobjects.all
    end
  end

  describe '#find' do
    before { stub_method(method: :get) }

    it 'calls Zype::Zobjects#find' do
      expect_any_instance_of(Zype::Zobjects).to receive(:find)
      client.zobjects.find(id: '340234')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.zobjects.find(id: '340234')
    end
  end

  describe '#create' do
    before { stub_method(method: :post) }

    it 'calls Zype::Zobjects#create' do
      expect_any_instance_of(Zype::Zobjects).to receive(:create)
      client.zobjects.create(params: {})
    end

    it 'calls Zype::Client#post' do
      expect_any_instance_of(Zype::Client).to receive(:post).and_call_original
      client.zobjects.create(params: {})
    end
  end

  describe '#update' do
    before { stub_method(method: :put) }

    it 'calls Zype::Zobjects#find' do
      expect_any_instance_of(Zype::Zobjects).to receive(:update)
      client.zobjects.update(id: '340234', params: {})
    end

    it 'calls Zype::Client#put' do
      expect_any_instance_of(Zype::Client).to receive(:put).and_call_original
      client.zobjects.update(id: '340234', params: {})
    end
  end

  describe '#destroy' do
    before { stub_method(method: :delete) }

    it 'calls Zype::Zobjects#destroy' do
      expect_any_instance_of(Zype::Zobjects).to receive(:delete)
      client.zobjects.delete(id: '340234')
    end

    it 'calls Zype::Client#destroy' do
      expect_any_instance_of(Zype::Client).to receive(:delete).and_call_original
      client.zobjects.delete(id: '340234')
    end
  end

  describe '#add_videos' do
    before { stub_method(method: :put) }

    it 'calls Zype::Zobjects#add_videos' do
      expect_any_instance_of(Zype::Zobjects).to receive(:add_videos)
      client.zobjects.add_videos(id: '340234', video_ids: [], type: 'type')
    end

    it 'calls Zype::Client#add_videos' do
      expect_any_instance_of(Zype::Client).to receive(:put).and_call_original
      client.zobjects.add_videos(id: '340234', video_ids: [], type: ['type'])
    end
  end

  describe '#path' do
    it 'returns zobjects' do
      expect(client.zobjects.send(:path)).to eq('zobjects')
    end
  end
end
