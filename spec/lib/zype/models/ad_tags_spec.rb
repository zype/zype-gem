describe Zype::AdTags, :stubbed do
  let(:client) { Zype::Client }

  describe '#all' do
    before { stub_method(method: :get) }

    it 'calls Zype::AdTags#all' do
      expect_any_instance_of(Zype::AdTags).to receive(:all)
      client.ad_tags.all
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.ad_tags.all
    end
  end

  describe '#find' do
    before { stub_method(method: :get) }

    it 'calls Zype::AdTags#find' do
      expect_any_instance_of(Zype::AdTags).to receive(:find)
      client.ad_tags.find(id: '340234')
    end

    it 'calls Zype::Client#get' do
      expect_any_instance_of(Zype::Client).to receive(:get).and_call_original
      client.ad_tags.find(id: '340234')
    end
  end

  describe '#create' do
    before { stub_method(method: :post) }

    it 'calls Zype::AdTags#create' do
      expect_any_instance_of(Zype::AdTags).to receive(:create)
      client.ad_tags.create(params: {})
    end

    it 'calls Zype::Client#post' do
      expect_any_instance_of(Zype::Client).to receive(:post).and_call_original
      client.ad_tags.create(params: {})
    end
  end

  describe '#update' do
    before { stub_method(method: :put) }

    it 'calls Zype::AdTags#find' do
      expect_any_instance_of(Zype::AdTags).to receive(:update)
      client.ad_tags.update(id: '340234', params: {})
    end

    it 'calls Zype::Client#put' do
      expect_any_instance_of(Zype::Client).to receive(:put).and_call_original
      client.ad_tags.update(id: '340234', params: {})
    end
  end

  describe '#destroy' do
    before { stub_method(method: :delete) }

    it 'calls Zype::AdTags#destroy' do
      expect_any_instance_of(Zype::AdTags).to receive(:delete)
      client.ad_tags.delete(id: '340234')
    end

    it 'calls Zype::Client#destroy' do
      expect_any_instance_of(Zype::Client).to receive(:delete).and_call_original
      client.ad_tags.delete(id: '340234')
    end
  end

  describe '#path' do
    it 'returns ad_tags' do
      expect(client.ad_tags.send(:path)).to eq('ad_tags')
    end
  end
end
