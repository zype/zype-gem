require 'spec_helper'

describe Zype::Segments, :stubbed do
  let(:client) { Zype::Client }

  describe '#all' do
    before { stub_method(method: :get) }

    it 'calls Zype::Segments#all' do
      expect_any_instance_of(Zype::Segments).to receive(:all)
      client.segments.all(video_id: '12345')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.segments.all(video_id: '12345')
    end
  end

  describe '#find' do
    before { stub_method(method: :get) }

    it 'calls Zype::Segments#find' do
      expect_any_instance_of(Zype::Segments).to receive(:find)
      client.segments.find(id: '340234', video_id: '12345')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.segments.find(id: '340234', video_id: '12345')
    end
  end

  describe '#create' do
    before { stub_method(method: :post) }

    it 'calls Zype::Segments#create' do
      expect_any_instance_of(Zype::Segments).to receive(:create)
      client.segments.create(video_id: '12345', params: {})
    end

    it 'calls Zype::Client#post' do
      expect_any_instance_of(Zype::Client).to receive(:post).and_call_original
      client.segments.create(video_id: '12345', params: {})
    end
  end

  describe '#update' do
    before { stub_method(method: :put) }

    it 'calls Zype::Segments#find' do
      expect_any_instance_of(Zype::Segments).to receive(:update)
      client.segments.update(id: '340234', video_id: '12345', params: {})
    end

    it 'calls Zype::Client#put' do
      expect_any_instance_of(Zype::Client).to receive(:put).and_call_original
      client.segments.update(id: '340234', video_id: '12345', params: {})
    end
  end

  describe '#destroy' do
    before { stub_method(method: :delete) }

    it 'calls Zype::Segments#destroy' do
      expect_any_instance_of(Zype::Segments).to receive(:delete)
      client.segments.delete(id: '340234', video_id: '12345')
    end

    it 'calls Zype::Client#destroy' do
      expect_any_instance_of(Zype::Client).to receive(:delete).and_call_original
      client.segments.delete(id: '340234', video_id: '12345')
    end
  end

  describe '#path' do
    it 'returns segments' do
      expect(client.segments.send(:path)).to eq('segments')
    end
  end
end
