require 'spec_helper'

describe Zype::VideoSources, :stubbed do
  let(:client) { Zype::Client }

  describe '#all' do
    before { stub_method(method: :get) }

    it 'calls Zype::VideoSources#all' do
      expect_any_instance_of(Zype::VideoSources).to receive(:all)
      client.video_sources.all
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.video_sources.all
    end
  end

  describe '#find' do
    before { stub_method(method: :get) }

    it 'calls Zype::VideoSources#find' do
      expect_any_instance_of(Zype::VideoSources).to receive(:find)
      client.video_sources.find(id: '340234')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.video_sources.find(id: '340234')
    end
  end

  describe '#create' do
    before { stub_method(method: :post) }

    it 'calls Zype::VideoSources#create' do
      expect_any_instance_of(Zype::VideoSources).to receive(:create)
      client.video_sources.create(params: {})
    end

    it 'calls Zype::Client#post' do
      expect_any_instance_of(Zype::Client).to receive(:post).and_call_original
      client.video_sources.create(params: {})
    end
  end

  describe '#update' do
    before { stub_method(method: :put) }

    it 'calls Zype::VideoSources#update' do
      expect_any_instance_of(Zype::VideoSources).to receive(:update)
      client.video_sources.update(id: '340234', params: {})
    end

    it 'calls Zype::Client#put' do
      expect_any_instance_of(Zype::Client).to receive(:put).and_call_original
      client.video_sources.update(id: '340234', params: {})
    end
  end

  describe '#destroy' do
    before { stub_method(method: :delete) }

    it 'calls Zype::VideoSources#destroy' do
      expect_any_instance_of(Zype::VideoSources).to receive(:delete)
      client.video_sources.delete(id: '340234')
    end

    it 'calls Zype::Client#destroy' do
      expect_any_instance_of(Zype::Client).to receive(:delete).and_call_original
      client.video_sources.delete(id: '340234')
    end
  end

  describe '#path' do
    it 'returns video_sources' do
      expect(client.video_sources.send(:path)).to eq('video_sources')
    end
  end
end
