require 'spec_helper'

RSpec.describe BeatBox do
  before(:each) do
    @bb = BeatBox.new
  end

  describe '#exists' do
    it 'can initialize' do
      expect(@bb).to be_a(BeatBox)
    end

    it 'has a list class attribute' do
      expect(@bb.list).to be_a(LinkedList)
    end
  end

  describe '#append(data)' do
    it 'can append data to the list' do
      expect(@bb.list.head).to eq(nil)
      @bb.append('deep doo ditt')
      expect(@bb.list.head.data).to eq('deep')
      expect(@bb.list.head.next_node.data).to eq('doo')
      @bb.append('woo hoo shu')
    end
  end

  describe '#count' do
    it 'can count beats' do
      expect(@bb.list.head).to eq(nil)
      expect(@bb.count).to eq(0)
      @bb.append('deep doo ditt')
      expect(@bb.count).to eq(3)
      @bb.append('woo hoo shu')
      expect(@bb.count).to eq(6)
      expect(@bb.list.count).to eq(6)
    end
  end

  describe '#play' do
    it 'plays the beats' do
      @bb.append('deep doo ditt')
      @bb.append('woo hoo shu')
      @bb.append('be doo be doo')
      @bb.play
    end
  end
end