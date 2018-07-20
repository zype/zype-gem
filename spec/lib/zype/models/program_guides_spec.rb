require 'spec_helper'

describe Zype::ProgramGuides, :stubbed do
  let(:client) { Zype::Client }

  describe '#all' do
    before { stub_method(method: :get) }

    it 'calls Zype::ProgramGuides#all' do
      expect_any_instance_of(Zype::ProgramGuides).to receive(:all)
      client.program_guides.all
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.program_guides.all
    end
  end

  describe '#find' do
    before { stub_method(method: :get) }

    it 'calls Zype::ProgramGuides#find' do
      expect_any_instance_of(Zype::ProgramGuides).to receive(:find)
      client.program_guides.find(id: '340234')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.program_guides.find(id: '340234')
    end
  end

  describe '#create' do
    before { stub_method(method: :post) }

    it 'calls Zype::ProgramGuides#create' do
      expect_any_instance_of(Zype::ProgramGuides).to receive(:create)
      client.program_guides.create(params: {})
    end

    it 'calls Zype::Client#post' do
      expect_any_instance_of(Zype::Client).to receive(:post).and_call_original
      client.program_guides.create(params: {})
    end
  end

  describe '#update' do
    before { stub_method(method: :put) }

    it 'calls Zype::ProgramGuides#find' do
      expect_any_instance_of(Zype::ProgramGuides).to receive(:update)
      client.program_guides.update(id: '340234', params: {})
    end

    it 'calls Zype::Client#put' do
      expect_any_instance_of(Zype::Client).to receive(:put).and_call_original
      client.program_guides.update(id: '340234', params: {})
    end
  end

  describe '#destroy' do
    before { stub_method(method: :delete) }

    it 'calls Zype::ProgramGuides#destroy' do
      expect_any_instance_of(Zype::ProgramGuides).to receive(:delete)
      client.program_guides.delete(id: '340234')
    end

    it 'calls Zype::Client#destroy' do
      expect_any_instance_of(Zype::Client).to receive(:delete).and_call_original
      client.program_guides.delete(id: '340234')
    end
  end

  describe '#entries' do
    before { stub_method(method: :get) }

    it 'calls Zype::ProgramGuides#entries' do
      expect_any_instance_of(Zype::ProgramGuides).to receive(:entries)
      client.program_guides.entries(id: '12321')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.program_guides.entries(id: '12321')
    end
  end

  describe '#path' do
    it 'returns program_guides' do
      expect(client.program_guides.send(:path)).to eq('program_guides')
    end
  end
end
