require 'spec_helper'

describe Zype::Devices, :stubbed do
  let(:client) { Zype::Client }

  describe '#all' do
    before { stub_method(method: :get) }

    it 'calls Zype::Devices#all' do
      expect_any_instance_of(Zype::Devices).to receive(:all)
      client.devices.all
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.devices.all
    end
  end

  describe '#find' do
    before { stub_method(method: :get) }

    it 'calls Zype::Devices#find' do
      expect_any_instance_of(Zype::Devices).to receive(:find)
      client.devices.find(id: '340234')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.devices.find(id: '340234')
    end
  end

  describe '#path' do
    it 'returns devices' do
      expect(client.devices.send(:path)).to eq('devices')
    end
  end

  describe 'undefined methods' do
    it 'should raise a NoMethodError for unsupported methods' do
      %i[create update delete].each do |mtd|
        expect { client.devices.send(mtd) }.to raise_error(NoMethodError)
      end
    end
  end
end
