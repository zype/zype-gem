require 'spec_helper'

describe Zype::DeviceCategories, :stubbed do
  let(:client) { Zype::Client }

  describe '#all' do
    before { stub_method(method: :get) }

    it 'calls Zype::DeviceCategories#all' do
      expect_any_instance_of(Zype::DeviceCategories).to receive(:all)
      client.device_categories.all
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.device_categories.all
    end
  end

  describe '#find' do
    before { stub_method(method: :get) }

    it 'calls Zype::DeviceCategories#find' do
      expect_any_instance_of(Zype::DeviceCategories).to receive(:find)
      client.device_categories.find(id: '340234')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.device_categories.find(id: '340234')
    end
  end

  describe '#path' do
    it 'returns device_categories' do
      expect(client.device_categories.send(:path)).to eq('device_categories')
    end
  end

  describe 'undefined methods' do
    it 'should raise a NoMethodError for unsupported methods' do
      %i[create update delete].each do |mtd|
        expect { client.device_categories.send(mtd) }.to raise_error(NoMethodError)
      end
    end
  end
end
