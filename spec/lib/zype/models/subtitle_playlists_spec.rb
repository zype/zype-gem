require 'spec_helper'

describe Zype::SubtitlePlaylists, :stubbed do
  let(:client) { Zype::Client }

  describe '#create' do
    before { stub_method(method: :post) }

    it 'calls Zype::SubtitlePlaylists#create' do
      expect_any_instance_of(Zype::SubtitlePlaylists).to receive(:create)
      client.subtitle_playlists.create(video_id: '12345', params: {})
    end

    it 'calls Zype::Client#post' do
      expect_any_instance_of(Zype::Client).to receive(:post).and_call_original
      client.subtitle_playlists.create(video_id: '12345', params: {})
    end
  end

  describe '#destroy' do
    before { stub_method(method: :delete) }

    it 'calls Zype::SubtitlePlaylists#destroy' do
      expect_any_instance_of(Zype::SubtitlePlaylists).to receive(:delete)
      client.subtitle_playlists.delete(language: 'english', video_id: '12345')
    end

    it 'calls Zype::Client#destroy' do
      expect_any_instance_of(Zype::Client).to receive(:delete).and_call_original
      client.subtitle_playlists.delete(language: 'english', video_id: '12345')
    end
  end

  describe 'undefined methods' do
    it 'should raise a NoMethodError for unsupported methods' do
      %i[all find update].each do |mtd|
        expect { client.subtitle_playlists.send(mtd) }.to raise_error(NoMethodError)
      end
    end
  end
end
