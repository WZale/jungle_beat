require 'rspec'
require './lib/linked_list'
require './lib/node'

RSpec.describe LinkedList do
  it "exists" do
  list = LinkedList.new

require 'pry'; binding.pry

    expect(list.head).to eq(nil)
  end
end