require 'rspec'
require './lib/linked_list'
require './lib/node'

RSpec.describe LinkedList do
  it "exists" do
    list = LinkedList.new

    expect(list.head).to eq(nil)
  end

  it "has an append method that can add multiple nodes" do
    list = LinkedList.new
    expect(list.head).to eq(nil)

    expect(list.append("doop")).to eq("doop")
    expect(list.head).to be_a(Node)
    expect(list.head.data).to eq("doop")
    expect(list.head.next_node).to eq(nil)

    expect(list.append("deep")).to eq("deep")
    expect(list.head.data).to eq("doop")
    expect(list.head.next_node.data).to eq("deep")
  end

  it "has a count method" do
    list = LinkedList.new

    expect(list.append("doop")).to eq("doop")
    
    expect(list.head).to be_a(Node)
    expect(list.head.data).to eq("doop")
    
    expect(list.count).to eq(1)
  end

  xit "has a to_string method" do
    list = LinkedList.new
    list.append("doop")
    expect(list.to_string).to eq("doop")
    require 'pry'; binding.pry
  end
end