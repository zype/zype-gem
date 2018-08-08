require 'spec_helper'

describe Zype::VideoFavorites, :stubbed do
  let(:client) { Zype::Client }

  describe '#all' do
    before { stub_method(method: :get) }

    it 'calls Zype::VideoFavorites#all' do
      expect_any_instance_of(Zype::VideoFavorites).to receive(:all)
      client.video_favorites.all(consumer_id: '3049203')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.video_favorites.all(consumer_id: '3049203')
    end
  end

  describe '#create' do
    before { stub_method(method: :post) }

    it 'calls Zype::VideoFavorites#post' do
      expect_any_instance_of(Zype::VideoFavorites).to receive(:create)
      client.video_favorites.create(consumer_id: '3049203', params: {})
    end

    it 'calls Zype::Client#post' do
      expect_any_instance_of(Zype::Client).to receive(:post).and_call_original
      client.video_favorites.create(consumer_id: '3049203', params: {})
    end
  end

  describe '#delete' do
    before { stub_method(method: :delete) }

    it 'calls Zype::VideoFavorites#delete' do
      expect_any_instance_of(Zype::VideoFavorites).to receive(:delete)
      client.video_favorites.delete(consumer_id: '3049203', id: '23409234')
    end

    it 'calls Zype::Client#delete' do
      expect_any_instance_of(Zype::Client).to receive(:delete).and_call_original
      client.video_favorites.delete(consumer_id: '3049203', id: '23409234')
    end
  end

  describe 'undefined methods' do
    it 'should raise a NoMethodError for unsupported methods' do
      %i[find update].each do |mtd|
        expect { client.video_favorites.send(mtd) }.to raise_error(NoMethodError)
      end
    end
  end

  describe '#path' do
    it 'returns video_favorites' do
      expect(client.video_favorites.send(:path)).to eq('video_favorites')
    end
  end
end
