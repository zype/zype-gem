require 'spec_helper'

describe Zype::Players, :stubbed do
  let(:client) { Zype::Client }

  describe '#find' do
    before { stub_method(method: :get) }

    it 'calls Zype::Players#find' do
      expect_any_instance_of(Zype::Players).to receive(:find)
      client.players.find(id: '340234', format: 'json')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.players.find(id: '340234', format: 'json')
    end
  end

  describe 'undefined methods' do
    it 'should raise a NoMethodError for unsupported methods' do
      %i[all create update delete].each do |mtd|
        expect { client.players.send(mtd) }.to raise_error(NoMethodError)
      end
    end
  end
end
