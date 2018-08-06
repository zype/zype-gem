require 'spec_helper'

describe Zype::Subscriptions, :stubbed do
  let(:client) { Zype::Client }

  describe '#all' do
    before { stub_method(method: :get) }

    it 'calls Zype::Subscriptions#all' do
      expect_any_instance_of(Zype::Subscriptions).to receive(:all)
      client.subscriptions.all
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.subscriptions.all
    end
  end

  describe '#find' do
    before { stub_method(method: :get) }

    it 'calls Zype::Subscriptions#find' do
      expect_any_instance_of(Zype::Subscriptions).to receive(:find)
      client.subscriptions.find(id: '340234')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.subscriptions.find(id: '340234')
    end
  end

  describe '#create' do
    before { stub_method(method: :post) }

    it 'calls Zype::Subscriptions#create' do
      expect_any_instance_of(Zype::Subscriptions).to receive(:create)
      client.subscriptions.create(params: {})
    end

    it 'calls Zype::Client#post' do
      expect_any_instance_of(Zype::Client).to receive(:post).and_call_original
      client.subscriptions.create(params: {})
    end
  end

  describe '#update' do
    before { stub_method(method: :put) }

    it 'calls Zype::Subscriptions#find' do
      expect_any_instance_of(Zype::Subscriptions).to receive(:update)
      client.subscriptions.update(id: '340234', params: {})
    end

    it 'calls Zype::Client#put' do
      expect_any_instance_of(Zype::Client).to receive(:put).and_call_original
      client.subscriptions.update(id: '340234', params: {})
    end
  end

  describe '#destroy' do
    before { stub_method(method: :delete) }

    it 'calls Zype::Subscriptions#destroy' do
      expect_any_instance_of(Zype::Subscriptions).to receive(:delete)
      client.subscriptions.delete(id: '340234')
    end

    it 'calls Zype::Client#destroy' do
      expect_any_instance_of(Zype::Client).to receive(:delete).and_call_original
      client.subscriptions.delete(id: '340234')
    end
  end

  describe '#path' do
    it 'returns subscriptions' do
      expect(client.subscriptions.send(:path)).to eq('subscriptions')
    end
  end
end
