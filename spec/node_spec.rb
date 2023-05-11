require 'spec_helper'

RSpec.describe Node do
  before(:each) do
    @node = Node.new("plop")
  end

  describe '#exists' do
    it 'can initialize' do
      expect(@node).to be_a(Node)
    end

    it 'can have a data attribute' do
      expect(@node.data).to eq("plop")
    end
  end
  describe '#next_node' do
    it 'can have a next node' do
      expect(@node.next_node).to eq(nil)
    end
  end
end