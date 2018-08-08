require 'spec_helper'

describe Zype::RevenueModels, :stubbed do
  let(:client) { Zype::Client }

  describe '#all' do
    before { stub_method(method: :get) }

    it 'calls Zype::RevenueModels#all' do
      expect_any_instance_of(Zype::RevenueModels).to receive(:all)
      client.revenue_models.all
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.revenue_models.all
    end
  end

  describe '#find' do
    before { stub_method(method: :get) }

    it 'calls Zype::RevenueModels#find' do
      expect_any_instance_of(Zype::RevenueModels).to receive(:find)
      client.revenue_models.find(id: '340234')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.revenue_models.find(id: '340234')
    end
  end

  describe 'undefined methods' do
    it 'should raise a NoMethodError for unsupported methods' do
      %i[create update delete].each do |mtd|
        expect { client.revenue_models.send(mtd) }.to raise_error(NoMethodError)
      end
    end
  end

  describe '#path' do
    it 'returns revenue_models' do
      expect(client.revenue_models.send(:path)).to eq('revenue_models')
    end
  end
end
