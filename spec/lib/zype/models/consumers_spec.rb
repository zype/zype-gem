require 'spec_helper'

describe Zype::Consumers, :stubbed do
  let(:client) { Zype::Client }

  describe '#all' do
    before { stub_method(method: :get) }

    it 'calls Zype::Consumers#all' do
      expect_any_instance_of(Zype::Consumers).to receive(:all)
      client.consumers.all
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.consumers.all
    end
  end

  describe '#find' do
    before { stub_method(method: :get) }

    it 'calls Zype::Consumers#find' do
      expect_any_instance_of(Zype::Consumers).to receive(:find)
      client.consumers.find(id: '340234')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.consumers.find(id: '340234')
    end
  end

  describe '#create' do
    before { stub_method(method: :post) }

    it 'calls Zype::Consumers#create' do
      expect_any_instance_of(Zype::Consumers).to receive(:create)
      client.consumers.create(params: {})
    end

    it 'calls Zype::Client#post' do
      expect_any_instance_of(Zype::Client).to receive(:post).and_call_original
      client.consumers.create(params: {})
    end
  end

  describe '#update' do
    before { stub_method(method: :put) }

    it 'calls Zype::Consumers#find' do
      expect_any_instance_of(Zype::Consumers).to receive(:update)
      client.consumers.update(id: '340234', params: {})
    end

    it 'calls Zype::Client#put' do
      expect_any_instance_of(Zype::Client).to receive(:put).and_call_original
      client.consumers.update(id: '340234', params: {})
    end
  end

  describe '#destroy' do
    before { stub_method(method: :delete) }

    it 'calls Zype::Consumers#destroy' do
      expect_any_instance_of(Zype::Consumers).to receive(:delete)
      client.consumers.delete(id: '340234')
    end

    it 'calls Zype::Client#destroy' do
      expect_any_instance_of(Zype::Client).to receive(:delete).and_call_original
      client.consumers.delete(id: '340234')
    end
  end

  describe '#forgot_password' do
    before { stub_method(method: :put) }

    it 'calls Zype::Consumers#forgot_password' do
      expect_any_instance_of(Zype::Consumers).to receive(:forgot_password)
      client.consumers.forgot_password(email: 'test@example.com')
    end

    it 'calls Zype::Client#put' do
      expect_any_instance_of(Zype::Client).to receive(:put).and_call_original
      client.consumers.forgot_password(email: 'test@example.com')
    end
  end

  describe '#path' do
    it 'returns consumers' do
      expect(client.consumers.send(:path)).to eq('consumers')
    end
  end
end
