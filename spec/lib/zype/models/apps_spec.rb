require 'spec_helper'

describe Zype::Apps, :stubbed do
  let(:client) { Zype::Client }

  describe '#find' do
    before { stub_method(method: :get) }

    context 'with an app_key set' do
      before { Zype.configuration.app_key = SecureRandom.base64 }

      it 'calls Zype::Apps#find' do
        expect_any_instance_of(Zype::Apps).to receive(:find)
        client.apps.find
      end

      it 'calls Zype::Client#get' do
        expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
        client.apps.find
      end
    end

    context 'without an app_key set' do
      let(:app) { Zype::Apps.new('app_key') }
      before { Zype.configuration.app_key = nil }

      it 'raises a NoAppKey error' do
        expect { app.find }.to raise_error(Zype::Client::NoAppKey)
      end
    end
  end

  describe 'undefined methods' do
    let(:app) { Zype::Apps.new('app_key') }

    it 'should raise a NoMethodError for unsupported methods' do
      %i[all create update delete].each do |mtd|
        expect { app.send(mtd) }.to raise_error(NoMethodError)
      end
    end
  end
end
