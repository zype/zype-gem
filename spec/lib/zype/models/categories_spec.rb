require 'spec_helper'

describe Zype::Categories, :stubbed do
  let(:client) { Zype::Client }

  describe '#all' do
    before { stub_method(method: :get) }

    it 'calls Zype::Categories#all' do
      expect_any_instance_of(Zype::Categories).to receive(:all)
      client.categories.all
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.categories.all
    end
  end

  describe '#find' do
    before { stub_method(method: :get) }

    it 'calls Zype::Categories#find' do
      expect_any_instance_of(Zype::Categories).to receive(:find)
      client.categories.find(id: '340234')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.categories.find(id: '340234')
    end
  end

  describe '#create' do
    before { stub_method(method: :post) }

    it 'calls Zype::Categories#create' do
      expect_any_instance_of(Zype::Categories).to receive(:create)
      client.categories.create(params: {})
    end

    it 'calls Zype::Client#post' do
      expect_any_instance_of(Zype::Client).to receive(:post).and_call_original
      client.categories.create(params: {})
    end
  end

  describe '#update' do
    before { stub_method(method: :put) }

    it 'calls Zype::Categories#find' do
      expect_any_instance_of(Zype::Categories).to receive(:update)
      client.categories.update(id: '340234', params: {})
    end

    it 'calls Zype::Client#put' do
      expect_any_instance_of(Zype::Client).to receive(:put).and_call_original
      client.categories.update(id: '340234', params: {})
    end
  end

  describe '#destroy' do
    before { stub_method(method: :delete) }

    it 'calls Zype::Categories#destroy' do
      expect_any_instance_of(Zype::Categories).to receive(:delete)
      client.categories.delete(id: '340234')
    end

    it 'calls Zype::Client#destroy' do
      expect_any_instance_of(Zype::Client).to receive(:delete).and_call_original
      client.categories.delete(id: '340234')
    end
  end

  describe '#path' do
    it 'returns categories' do
      expect(client.categories.send(:path)).to eq('categories')
    end
  end
end
