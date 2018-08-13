require 'spec_helper'

describe Zype::ZobjectTypes, :stubbed do
  let(:client) { Zype::Client }

  describe '#all' do
    before { stub_method(method: :get) }

    it 'calls Zype::ZobjectTypes#all' do
      expect_any_instance_of(Zype::ZobjectTypes).to receive(:all)
      client.zobject_types.all
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.zobject_types.all
    end
  end

  describe '#find' do
    before { stub_method(method: :get) }

    it 'calls Zype::ZobjectTypes#find' do
      expect_any_instance_of(Zype::ZobjectTypes).to receive(:find)
      client.zobject_types.find(id: '340234')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.zobject_types.find(id: '340234')
    end
  end

  describe '#create' do
    before { stub_method(method: :post) }

    it 'calls Zype::ZobjectTypes#create' do
      expect_any_instance_of(Zype::ZobjectTypes).to receive(:create)
      client.zobject_types.create(params: {})
    end

    it 'calls Zype::Client#post' do
      expect_any_instance_of(Zype::Client).to receive(:post).and_call_original
      client.zobject_types.create(params: {})
    end
  end

  describe '#update' do
    before { stub_method(method: :put) }

    it 'calls Zype::ZobjectTypes#find' do
      expect_any_instance_of(Zype::ZobjectTypes).to receive(:update)
      client.zobject_types.update(id: '340234', params: {})
    end

    it 'calls Zype::Client#put' do
      expect_any_instance_of(Zype::Client).to receive(:put).and_call_original
      client.zobject_types.update(id: '340234', params: {})
    end
  end

  describe '#destroy' do
    before { stub_method(method: :delete) }

    it 'calls Zype::ZobjectTypes#destroy' do
      expect_any_instance_of(Zype::ZobjectTypes).to receive(:delete)
      client.zobject_types.delete(id: '340234')
    end

    it 'calls Zype::Client#destroy' do
      expect_any_instance_of(Zype::Client).to receive(:delete).and_call_original
      client.zobject_types.delete(id: '340234')
    end
  end

  describe '#path' do
    it 'returns zobject_types' do
      expect(client.zobject_types.send(:path)).to eq('zobject_types')
    end
  end
end
