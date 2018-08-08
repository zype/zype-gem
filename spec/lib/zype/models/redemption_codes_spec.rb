require 'spec_helper'

describe Zype::RedemptionCodes, :stubbed do
  let(:client) { Zype::Client }

  describe '#all' do
    before { stub_method(method: :get) }

    it 'calls Zype::RedemptionCodes#all' do
      expect_any_instance_of(Zype::RedemptionCodes).to receive(:all)
      client.redemption_codes.all
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.redemption_codes.all
    end
  end

  describe '#create' do
    before { stub_method(method: :post) }

    it 'calls Zype::RedemptionCodes#create' do
      expect_any_instance_of(Zype::RedemptionCodes).to receive(:create)
      client.redemption_codes.create(params: {})
    end

    it 'calls Zype::Client#post' do
      expect_any_instance_of(Zype::Client).to receive(:post).and_call_original
      client.redemption_codes.create(params: {})
    end
  end

  describe 'undefined methods' do
    it 'should raise a NoMethodError for unsupported methods' do
      %i[find update delete].each do |mtd|
        expect { client.redemption_codes.send(mtd) }.to raise_error(NoMethodError)
      end
    end
  end

  describe '#path' do
    it 'returns redemption_codes' do
      expect(client.redemption_codes.send(:path)).to eq('redemption_codes')
    end
  end
end
