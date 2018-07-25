require 'spec_helper'

describe Zype::GeoIp, :stubbed do
  let(:client) { Zype::Client }

  describe '#find' do
    before { stub_method(method: :get) }

    it 'calls Zype::GeoIp#find' do
      expect_any_instance_of(Zype::GeoIp).to receive(:find)
      client.geo_ip.find(ip_address: '100.14.145.349')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.geo_ip.find(ip_address: '100.14.145.349')
    end
  end

  describe 'undefined methods' do
    it 'should raise a NoMethodError for unsupported methods' do
      %i[all create update delete].each do |mtd|
        expect { client.geo_ip.send(mtd) }.to raise_error(NoMethodError)
      end
    end
  end
end
