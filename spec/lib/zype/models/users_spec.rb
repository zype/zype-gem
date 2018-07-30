require 'spec_helper'

describe Zype::Users, :stubbed do
  let(:client) { Zype::Client }

  describe '#all' do
    before { stub_method(method: :get) }

    it 'calls Zype::Users#all' do
      expect_any_instance_of(Zype::Users).to receive(:all)
      client.users.all
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.users.all
    end
  end

  describe '#find' do
    before { stub_method(method: :get) }

    it 'calls Zype::Users#find' do
      expect_any_instance_of(Zype::Users).to receive(:find)
      client.users.find(id: '340234')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.users.find(id: '340234')
    end
  end

  describe '#create' do
    before { stub_method(method: :post) }

    it 'calls Zype::Users#create' do
      expect_any_instance_of(Zype::Users).to receive(:create)
      client.users.create(params: {})
    end

    it 'calls Zype::Client#update' do
      expect_any_instance_of(Zype::Client).to receive(:post).and_call_original
      client.users.create(params: {})
    end
  end

  describe '#update' do
    before { stub_method(method: :put) }

    it 'calls Zype::Users#update' do
      expect_any_instance_of(Zype::Users).to receive(:update)
      client.users.update(id: '340234', params: {})
    end

    it 'calls Zype::Client#update' do
      expect_any_instance_of(Zype::Client).to receive(:put).and_call_original
      client.users.update(id: '340234', params: {})
    end
  end

  describe '#remove' do
    before { stub_method(method: :put) }

    it 'calls Zype::Users#remove' do
      expect_any_instance_of(Zype::Users).to receive(:remove)
      client.users.remove(id: 'l342342')
    end

    it 'calls Zype::Client#put' do
      expect_any_instance_of(Zype::Client).to receive(:put).and_call_original
      client.users.remove(id: 'l342342')
    end
  end

  describe '#path' do
    it 'returns site/users' do
      expect(client.users.send(:path)).to eq('site/users')
    end
  end
end
