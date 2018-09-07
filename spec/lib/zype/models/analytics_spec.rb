require 'spec_helper'

describe Zype::Analytics, :stubbed do
  let(:client) { Zype::Client }

  describe '#stream_hours' do
    before { stub_method(method: :get) }

    it 'calls Zype::Analytics#stream_hours' do
      expect_any_instance_of(Zype::Analytics).to receive(:stream_hours)
      client.analytics.stream_hours(params: {})
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::AnalyticsClient).to receive(:get).and_call_original
      client.analytics.all(params: {})
    end
  end
end
