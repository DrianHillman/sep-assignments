include RSpec

require_relative 'node'
require_relative 'binary_search_tree'
require 'benchmark'

RSpec.describe BinarySearchTree, type: Class do
  let(:root) { Node.new("node", 1) }
  let(:tree) { BinarySearchTree.new(root) }

  describe "#Benchmark" do
    it "provides a benchmark comparison" do
      n = 10000
      Benchmark.bm do |x|
        x.report { 1.upto(n) do; tree.insert(root, Node.new("node", n)); end }
      end
    end
  end
end