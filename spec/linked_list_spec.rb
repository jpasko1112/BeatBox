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
      expect(@list.append('doop')).to eq('doop')
      expect(@list.head.next_node).to eq(nil)
      expect(@list.head.next_node).to eq(nil)
    end
  end
end