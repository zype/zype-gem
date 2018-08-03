require 'spec_helper'

describe Zype::Pin, :stubbed do
  let(:client) { Zype::Client }

  describe '#status' do
    before { stub_method(method: :get) }

    it 'calls Zype::Pin#all' do
      expect_any_instance_of(Zype::Pin).to receive(:status)
      client.pin.status
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.pin.status(linked_device_id: '59204')
    end
  end

  describe '#acquire' do
    before { stub_method(method: :post) }

    it 'calls Zype::Pin#acquire' do
      expect_any_instance_of(Zype::Pin).to receive(:acquire)
      client.pin.acquire(linked_device_id: '59204')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:post).and_call_original
      client.pin.acquire(linked_device_id: '59204')
    end
  end

  describe '#link' do
    before { stub_method(method: :put) }

    it 'calls Zype::Pin#link' do
      expect_any_instance_of(Zype::Pin).to receive(:link)
      client.pin.link(consumer_id: '23402', pin: 's3kf32')
    end

    it 'calls Zype::Client#post' do
      expect_any_instance_of(Zype::Client).to receive(:put).and_call_original
      client.pin.link(consumer_id: '23402', pin: 's3kf32')
    end
  end

  describe '#unlink' do
    before { stub_method(method: :put) }

    it 'calls Zype::Pin#find' do
      expect_any_instance_of(Zype::Pin).to receive(:unlink)
      client.pin.unlink(consumer_id: '23402', pin: 's3kf32')
    end

    it 'calls Zype::Client#put' do
      expect_any_instance_of(Zype::Client).to receive(:put).and_call_original
      client.pin.unlink(consumer_id: '23402', pin: 's3kf32')
    end
  end
end
