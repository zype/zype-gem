require 'spec_helper'

describe Zype::Transactions, :stubbed do
  let(:client) { Zype::Client }

  describe '#all' do
    before { stub_method(method: :get) }

    it 'calls Zype::Transactions#all' do
      expect_any_instance_of(Zype::Transactions).to receive(:all)
      client.transactions.all
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.transactions.all
    end
  end

  describe '#find' do
    before { stub_method(method: :get) }

    it 'calls Zype::Transactions#find' do
      expect_any_instance_of(Zype::Transactions).to receive(:find)
      client.transactions.find(id: '340234')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.transactions.find(id: '340234')
    end
  end

  describe '#create' do
    before { stub_method(method: :post) }

    it 'calls Zype::Transactions#create' do
      expect_any_instance_of(Zype::Transactions).to receive(:create)
      client.transactions.create(params: {})
    end

    it 'calls Zype::Client#post' do
      expect_any_instance_of(Zype::Client).to receive(:post).and_call_original
      client.transactions.create(params: {})
    end
  end

  describe '#update' do
    before { stub_method(method: :put) }

    it 'calls Zype::Transactions#find' do
      expect_any_instance_of(Zype::Transactions).to receive(:update)
      client.transactions.update(id: '340234', params: {})
    end

    it 'calls Zype::Client#put' do
      expect_any_instance_of(Zype::Client).to receive(:put).and_call_original
      client.transactions.update(id: '340234', params: {})
    end
  end

  describe '#destroy' do
    before { stub_method(method: :delete) }

    it 'calls Zype::Transactions#destroy' do
      expect_any_instance_of(Zype::Transactions).to receive(:delete)
      client.transactions.delete(id: '340234')
    end

    it 'calls Zype::Client#destroy' do
      expect_any_instance_of(Zype::Client).to receive(:delete).and_call_original
      client.transactions.delete(id: '340234')
    end
  end

  describe '#path' do
    it 'returns transactions' do
      expect(client.transactions.send(:path)).to eq('transactions')
    end
  end
end
