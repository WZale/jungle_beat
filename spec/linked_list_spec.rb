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

  it "has a count method" do
    list = LinkedList.new

    expect(list.append("doop")).to eq("doop")
    
    expect(list.head).to be_a(Node)
    expect(list.head.data).to eq("doop")
    
    expect(list.count).to eq(1)
  end

  it "has a to_string method" do
    list = LinkedList.new
    list.append("doop")
    expect(list.to_string).to eq("doop")
  end
end