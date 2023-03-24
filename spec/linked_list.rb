require 'rspec'
require './lib/linked_list'
require './lib/node'

RSpec.describe LinkedList do
  it "exists" do
    list = LinkedList.new

    expect(list.head).to eq(nil)
  end

  it "has an append method" do
    list = LinkedList.new

    expect(list.append("doop")).to eq("doop")
    
    expect(list.head).to be_a(Node)
    expect(list.head.data).to eq("doop")
  end
end