include RSpec

require_relative 'node'
require_relative 'linked_list'
require 'benchmark'

RSpec.describe LinkedList, type: Class do
  let(:a) { Array.new }
  let(:llist) { LinkedList.new }

  describe "#Analytics" do
    it "provides a benchmark comparison" do
      n = 10000
      Benchmark.bm do |x|
        x.report { n.times do; a << 1; end }
        x.report { n.times do; llist.add_to_tail(Node.new(1)); end }
        puts "\nTest 2"
        x.report { a[5000] }
        x.report { llist.call_item(5000) }
      end
    end
  end
end