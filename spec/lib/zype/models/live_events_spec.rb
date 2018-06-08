require 'spec_helper'

describe Zype::LiveEvents, :stubbed do
  let(:client) { Zype::Client }

  describe '#all' do
    before { stub_method(method: :get) }

    it 'calls Zype::LiveEvents#all' do
      expect_any_instance_of(Zype::LiveEvents).to receive(:all)
      client.live_events.all
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.live_events.all
    end
  end

  describe '#find' do
    before { stub_method(method: :get) }

    it 'calls Zype::Live#find' do
      expect_any_instance_of(Zype::LiveEvents).to receive(:find)
      client.live_events.find(id: '340234')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.live_events.find(id: '340234')
    end
  end

  describe '#create' do
    before { stub_method(method: :post) }

    it 'calls Zype::Live#create' do
      expect_any_instance_of(Zype::LiveEvents).to receive(:create)
      client.live_events.create(params: {})
    end

    it 'calls Zype::Client#post' do
      expect_any_instance_of(Zype::Client).to receive(:post).and_call_original
      client.live_events.create(params: {})
    end
  end

  describe '#update' do
    before { stub_method(method: :put) }

    it 'calls Zype::Live#find' do
      expect_any_instance_of(Zype::LiveEvents).to receive(:update)
      client.live_events.update(id: '340234', params: {})
    end

    it 'calls Zype::Client#put' do
      expect_any_instance_of(Zype::Client).to receive(:put).and_call_original
      client.live_events.update(id: '340234', params: {})
    end
  end

  describe '#destroy' do
    before { stub_method(method: :delete) }

    it 'calls Zype::Live#destroy' do
      expect_any_instance_of(Zype::LiveEvents).to receive(:delete)
      client.live_events.delete(id: '340234')
    end

    it 'calls Zype::Client#destroy' do
      expect_any_instance_of(Zype::Client).to receive(:delete).and_call_original
      client.live_events.delete(id: '340234')
    end
  end

  describe '#destroy' do
    before { stub_method(method: :put) }

    it 'calls Zype::Live#start' do
      expect_any_instance_of(Zype::LiveEvents).to receive(:start)
      client.live_events.start(id: '340234')
    end

    it 'calls Zype::Client#put' do
      expect_any_instance_of(Zype::Client).to receive(:put).and_call_original
      client.live_events.start(id: '340234')
    end
  end

  describe '#destroy' do
    before { stub_method(method: :put) }

    it 'calls Zype::Live#stop' do
      expect_any_instance_of(Zype::LiveEvents).to receive(:stop)
      client.live_events.stop(id: '340234')
    end

    it 'calls Zype::Client#put' do
      expect_any_instance_of(Zype::Client).to receive(:put).and_call_original
      client.live_events.stop(id: '340234')
    end
  end

  describe '#archive' do
    before { stub_method(method: :put) }

    it 'calls Zype::Live#archive' do
      expect_any_instance_of(Zype::LiveEvents).to receive(:archive)
      client.live_events.archive(id: '340234')
    end

    it 'calls Zype::Client#put' do
      expect_any_instance_of(Zype::Client).to receive(:put).and_call_original
      client.live_events.archive(id: '340234')
    end
  end
end
