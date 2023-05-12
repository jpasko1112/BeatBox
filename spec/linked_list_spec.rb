require 'spec_helper'

RSpec.describe LinkedList do
  before(:each) do
    @list = LinkedList.new
  end

  describe '#exists' do
    it 'can initialize' do
      expect(@list).to be_a(LinkedList)
    end

    it 'can have a head attribute' do
      expect(@list.head).to eq(nil)
    end
  end

  describe '#append(data)' do
    it 'can append data' do
      expect(@list.head).to eq(nil)
      @list.append('doop')
      expect(@list.head.data).to eq('doop')
      expect(@list.head.next_node).to eq(nil)
    end
  end

  describe '#count' do
    it 'can count the amount of nodes' do
      expect(@list.head).to eq(nil)
      @list.append('doop')
      expect(@list.count).to eq(1)
    end
  end
end