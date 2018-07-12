require 'spec_helper'

describe Zype::Videos, :stubbed do
  let(:client) { Zype::Client }

  describe '#all' do
    before { stub_method(method: :get) }

    it 'calls Zype::Videos#all' do
      expect_any_instance_of(Zype::Videos).to receive(:all)
      client.videos.all
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.videos.all
    end
  end

  describe '#find' do
    before { stub_method(method: :get) }

    it 'calls Zype::Videos#find' do
      expect_any_instance_of(Zype::Videos).to receive(:find)
      client.videos.find(id: '340234')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.videos.find(id: '340234')
    end
  end

  describe '#create' do
    before { stub_method(method: :post) }

    it 'calls Zype::Videos#create' do
      expect_any_instance_of(Zype::Videos).to receive(:create)
      client.videos.create(params: {})
    end

    it 'calls Zype::Client#post' do
      expect_any_instance_of(Zype::Client).to receive(:post).and_call_original
      client.videos.create(params: {})
    end
  end

  describe '#update' do
    before { stub_method(method: :put) }

    it 'calls Zype::Videos#find' do
      expect_any_instance_of(Zype::Videos).to receive(:update)
      client.videos.update(id: '340234', params: {})
    end

    it 'calls Zype::Client#put' do
      expect_any_instance_of(Zype::Client).to receive(:put).and_call_original
      client.videos.update(id: '340234', params: {})
    end
  end

  describe '#destroy' do
    before { stub_method(method: :delete) }

    it 'calls Zype::Videos#destroy' do
      expect_any_instance_of(Zype::Videos).to receive(:delete)
      client.videos.delete(id: '340234')
    end

    it 'calls Zype::Client#destroy' do
      expect_any_instance_of(Zype::Client).to receive(:delete).and_call_original
      client.videos.delete(id: '340234')
    end
  end

  describe '#add_zobjects' do
    before { stub_method(method: :put) }

    it 'calls Zype::Videos#add_zobjects' do
      expect_any_instance_of(Zype::Videos).to receive(:add_zobjects)
      client.videos.add_zobjects(id: 'l342342', zobject_ids: ['23049823'])
    end

    it 'calls Zype::Client#put' do
      expect_any_instance_of(Zype::Client).to receive(:put).and_call_original
      client.videos.add_zobjects(id: 'l342342', zobject_ids: ['23049823'])
    end
  end

  describe '#remove_zobjects' do
    before { stub_method(method: :put) }

    it 'calls Zype::Videos#remove_zobjects' do
      expect_any_instance_of(Zype::Videos).to receive(:remove_zobjects)
      client.videos.remove_zobjects(id: 'l342342', zobject_ids: ['23049823'])
    end

    it 'calls Zype::Client#put' do
      expect_any_instance_of(Zype::Client).to receive(:put).and_call_original
      client.videos.remove_zobjects(id: 'l342342', zobject_ids: ['23049823'])
    end
  end

  describe '#download_zobjects' do
    before { stub_method(method: :get) }

    it 'calls Zype::Videos#download' do
      expect_any_instance_of(Zype::Videos).to receive(:download)
      client.videos.download(id: 'l342342')
    end

    it 'calls Zype::Client#put' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.videos.download(id: 'l342342')
    end
  end

  describe '#path' do
    it 'returns videos' do
      expect(client.videos.send(:path)).to eq('videos')
    end
  end
end
