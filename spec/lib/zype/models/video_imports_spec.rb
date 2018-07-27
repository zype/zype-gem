require 'spec_helper'

describe Zype::VideoImports, :stubbed do
  let(:client) { Zype::Client }

  describe '#all' do
    before { stub_method(method: :get) }

    it 'calls Zype::VideoImports#all' do
      expect_any_instance_of(Zype::VideoImports).to receive(:all)
      client.video_imports.all
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.video_imports.all
    end
  end

  describe '#find' do
    before { stub_method(method: :get) }

    it 'calls Zype::VideoImports#find' do
      expect_any_instance_of(Zype::VideoImports).to receive(:find)
      client.video_imports.find(id: '340234')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.video_imports.find(id: '340234')
    end
  end

  describe '#add_video' do
    before { stub_method(method: :put) }

    it 'calls Zype::VideoImports#add_zobjects' do
      expect_any_instance_of(Zype::VideoImports).to receive(:add_video)
      client.video_imports.add_video(id: 'l342342')
    end

    it 'calls Zype::Client#put' do
      expect_any_instance_of(Zype::Client).to receive(:put).and_call_original
      client.video_imports.add_video(id: 'l342342')
    end
  end

  describe '#path' do
    it 'returns video_imports' do
      expect(client.video_imports.send(:path)).to eq('video_imports')
    end
  end
end
