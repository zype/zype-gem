require 'spec_helper'

describe Zype::LiveManifests, :stubbed do
  let(:client) { Zype::Client }

  describe '#find' do
    before { stub_method(method: :get) }

    it 'calls Zype::LiveManifests#find' do
      expect_any_instance_of(Zype::LiveManifests).to receive(:find)
      client.live_manifests.find(id: '340234')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.live_manifests.find(id: '340234')
    end
  end

  describe 'undefined methods' do
    it 'should raise a NoMethodError for unsupported methods' do
      %i[all create update delete].each do |mtd|
        expect { client.live_manifests.send(mtd) }.to raise_error(NoMethodError)
      end
    end
  end
end
