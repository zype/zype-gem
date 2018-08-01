require 'spec_helper'

describe Zype::CategoryContentRules, :stubbed do
  let(:client) { Zype::Client }

  describe '#all' do
    before { stub_method(method: :get) }

    it 'calls Zype::CategoryContentRules#all' do
      expect_any_instance_of(Zype::CategoryContentRules).to receive(:all)
      client.category_content_rules.all(category_id: '12345')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.category_content_rules.all(category_id: '12345')
    end
  end

  describe '#find' do
    before { stub_method(method: :get) }

    it 'calls Zype::CategoryContentRules#find' do
      expect_any_instance_of(Zype::CategoryContentRules).to receive(:find)
      client.category_content_rules.find(id: '340234', category_id: '12345')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.category_content_rules.find(id: '340234', category_id: '12345')
    end
  end

  describe '#create' do
    before { stub_method(method: :post) }

    it 'calls Zype::CategoryContentRules#create' do
      expect_any_instance_of(Zype::CategoryContentRules).to receive(:create)
      client.category_content_rules.create(category_id: '12345', params: {})
    end

    it 'calls Zype::Client#post' do
      expect_any_instance_of(Zype::Client).to receive(:post).and_call_original
      client.category_content_rules.create(category_id: '12345', params: {})
    end
  end

  describe '#update' do
    before { stub_method(method: :put) }

    it 'calls Zype::CategoryContentRules#find' do
      expect_any_instance_of(Zype::CategoryContentRules).to receive(:update)
      client.category_content_rules.update(id: '340234', category_id: '12345', params: {})
    end

    it 'calls Zype::Client#put' do
      expect_any_instance_of(Zype::Client).to receive(:put).and_call_original
      client.category_content_rules.update(id: '340234', category_id: '12345', params: {})
    end
  end

  describe '#destroy' do
    before { stub_method(method: :delete) }

    it 'calls Zype::CategoryContentRules#destroy' do
      expect_any_instance_of(Zype::CategoryContentRules).to receive(:delete)
      client.category_content_rules.delete(id: '340234', category_id: '12345')
    end

    it 'calls Zype::Client#destroy' do
      expect_any_instance_of(Zype::Client).to receive(:delete).and_call_original
      client.category_content_rules.delete(id: '340234', category_id: '12345')
    end
  end

  describe '#path' do
    it 'returns content_rules' do
      expect(client.category_content_rules.send(:path)).to eq('content_rules')
    end
  end
end
