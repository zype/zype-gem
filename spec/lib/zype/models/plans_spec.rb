require 'spec_helper'

describe Zype::Plans, :stubbed do
  let(:client) { Zype::Client }

  describe '#all' do
    before { stub_method(method: :get) }

    it 'calls Zype::Plans#all' do
      expect_any_instance_of(Zype::Plans).to receive(:all)
      client.plans.all
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.plans.all
    end
  end

  describe '#find' do
    before { stub_method(method: :get) }

    it 'calls Zype::Plans#find' do
      expect_any_instance_of(Zype::Plans).to receive(:find)
      client.plans.find(id: '340234')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.plans.find(id: '340234')
    end
  end

  describe '#create' do
    before { stub_method(method: :post) }

    it 'calls Zype::Plans#create' do
      expect_any_instance_of(Zype::Plans).to receive(:create)
      client.plans.create(params: {})
    end

    it 'calls Zype::Client#post' do
      expect_any_instance_of(Zype::Client).to receive(:post).and_call_original
      client.plans.create(params: {})
    end
  end

  describe '#update' do
    before { stub_method(method: :put) }

    it 'calls Zype::Plans#find' do
      expect_any_instance_of(Zype::Plans).to receive(:update)
      client.plans.update(id: '340234', params: {})
    end

    it 'calls Zype::Client#put' do
      expect_any_instance_of(Zype::Client).to receive(:put).and_call_original
      client.plans.update(id: '340234', params: {})
    end
  end

  describe '#destroy' do
    before { stub_method(method: :delete) }

    it 'calls Zype::Plans#destroy' do
      expect_any_instance_of(Zype::Plans).to receive(:delete)
      client.plans.delete(id: '340234')
    end

    it 'calls Zype::Client#destroy' do
      expect_any_instance_of(Zype::Client).to receive(:delete).and_call_original
      client.plans.delete(id: '340234')
    end
  end

  describe '#add_playlists' do
    before { stub_method(method: :put) }

    it 'calls Zype::Plans#add_playlists' do
      expect_any_instance_of(Zype::Plans).to receive(:add_playlists)
      client.plans.add_playlists(id: '340234', params: {})
    end

    it 'calls Zype::Client#add_playlists' do
      expect_any_instance_of(Zype::Client).to receive(:put).and_call_original
      client.plans.add_playlists(id: '340234', params: {})
    end
  end

  describe '#remove_playlists' do
    before { stub_method(method: :put) }

    it 'calls Zype::Plans#remove_playlists' do
      expect_any_instance_of(Zype::Plans).to receive(:remove_playlists)
      client.plans.remove_playlists(id: '340234', params: {})
    end

    it 'calls Zype::Client#add_playlists' do
      expect_any_instance_of(Zype::Client).to receive(:put).and_call_original
      client.plans.remove_playlists(id: '340234', params: {})
    end
  end

  describe '#path' do
    it 'returns plans' do
      expect(client.plans.send(:path)).to eq('plans')
    end
  end
end
