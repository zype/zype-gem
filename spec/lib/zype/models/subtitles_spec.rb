require 'spec_helper'

describe Zype::Subtitles, :stubbed do
  let(:client) { Zype::Client }

  describe '#all' do
    before { stub_method(method: :get) }

    it 'calls Zype::Subtitles#all' do
      expect_any_instance_of(Zype::Subtitles).to receive(:all)
      client.subtitles.all(video_id: '12345')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.subtitles.all(video_id: '12345')
    end
  end

  describe '#find' do
    before { stub_method(method: :get) }

    it 'calls Zype::Subtitles#find' do
      expect_any_instance_of(Zype::Subtitles).to receive(:find)
      client.subtitles.find(id: '340234', video_id: '12345')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.subtitles.find(id: '340234', video_id: '12345')
    end
  end

  describe '#create' do
    before { stub_method(method: :post) }

    it 'calls Zype::Subtitles#create' do
      expect_any_instance_of(Zype::Subtitles).to receive(:create)
      client.subtitles.create(video_id: '12345', params: {})
    end

    it 'calls Zype::Client#post' do
      expect_any_instance_of(Zype::Client).to receive(:post).and_call_original
      client.subtitles.create(video_id: '12345', params: {})
    end
  end

  describe '#update' do
    before { stub_method(method: :put) }

    it 'calls Zype::Subtitles#find' do
      expect_any_instance_of(Zype::Subtitles).to receive(:update)
      client.subtitles.update(id: '340234', video_id: '12345', params: {})
    end

    it 'calls Zype::Client#put' do
      expect_any_instance_of(Zype::Client).to receive(:put).and_call_original
      client.subtitles.update(id: '340234', video_id: '12345', params: {})
    end
  end

  describe '#destroy' do
    before { stub_method(method: :delete) }

    it 'calls Zype::Subtitles#destroy' do
      expect_any_instance_of(Zype::Subtitles).to receive(:delete)
      client.subtitles.delete(id: '340234', video_id: '12345')
    end

    it 'calls Zype::Client#destroy' do
      expect_any_instance_of(Zype::Client).to receive(:delete).and_call_original
      client.subtitles.delete(id: '340234', video_id: '12345')
    end
  end

  describe '#path' do
    it 'returns subtitles' do
      expect(client.subtitles.send(:path)).to eq('subtitles')
    end
  end
end
