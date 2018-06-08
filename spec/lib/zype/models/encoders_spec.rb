require 'spec_helper'

describe Zype::Encoders, :stubbed do
  let(:client) { Zype::Client }

  describe '#all' do
    before { stub_method(method: :get) }

    it 'calls Zype::Encoders#all' do
      expect_any_instance_of(Zype::Encoders).to receive(:all)
      client.encoders.all
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.encoders.all
    end
  end

  describe '#find' do
    before { stub_method(method: :get) }

    it 'calls Zype::Encoders#all' do
      expect_any_instance_of(Zype::Encoders).to receive(:find)
      client.encoders.find(encoder_name: 'dry-fire-39402')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.encoders.find(encoder_name: 'dry-fire-39402')
    end
  end

  describe '#start' do
    before { stub_method(method: :post) }

    it 'calls Zype::Encoders#all' do
      expect_any_instance_of(Zype::Encoders).to receive(:start)
      client.encoders.start(encoder_name: 'dry-fire-39402')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:post).and_call_original
      client.encoders.start(encoder_name: 'dry-fire-39402')
    end
  end

  describe '#stop' do
    before { stub_method(method: :post) }

    it 'calls Zype::Encoders#all' do
      expect_any_instance_of(Zype::Encoders).to receive(:stop)
      client.encoders.stop(encoder_name: 'dry-fire-39402')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:post).and_call_original
      client.encoders.stop(encoder_name: 'dry-fire-39402')
    end
  end
end
