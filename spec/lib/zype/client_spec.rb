require 'spec_helper'

describe Zype::Client do
  let(:client) { Zype::Client }

  describe 'dynamic methods' do
    %w(live_events encoders).each do |method|
      it 'exists' do
        expect(client).to respond_to(method)
      end
    end
  end

  describe '#execute', :stubbed do
    context 'when no API key is set' do
      before { Zype.configuration.api_key = nil }
      it 'raises a NoApiKey error' do
        expect {
          client.new.execute(method: :get, path: '/live_events')
        }.to raise_error(Zype::Client::NoApiKey)
      end
    end

    {
      401 => Zype::Client::Unauthorized,
      404 => Zype::Client::NotFound,
      422 => Zype::Client::UnprocessableEntity,
      500 => Zype::Client::ServerError
    }.each do |error_code, error|
      context "when a #{error_code} is returned" do
        before do
          Zype.configuration.api_key = 'zzz'
          stub_errors(code: error_code)
        end

        it "raises a #{error} error" do
          expect {
            client.new.execute(method: :get, path: '/live_events')
          }.to raise_error(error)
        end
      end
    end
  end
end
