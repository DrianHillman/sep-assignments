include RSpec

require_relative 'binary_search_tree'

RSpec.describe BinarySearchTree, type: Class do
  let (:root) { Node.new("Armageddon", 39) }
  let (:tree) { BinarySearchTree.new(root) }
  let (:dark_knight) { Node.new("The Dark Knight", 94) }
  let (:pirates) { Node.new("Pirates of the Caribbean", 79) }
  let (:spider_man) { Node.new("Spider Man", 89) }
  let (:furious_7) { Node.new("Furious 7", 78) }
  let (:transformers) { Node.new("Transformers", 57) }
  let (:skyfall) { Node.new("Skyfall", 93) }
  let (:lotr) { Node.new("The Lord of the Rings", 95) }
  let (:american_sniper) { Node.new("American Sniper", 72) }
  let (:act_of_valor) { Node.new("Act of Valor", 25) }
  let (:lone_survivor) { Node.new("Lone Survivor", 75) }
  let (:zero_dark_thirty) { Node.new("Zero Dark Thirty", 92) }
  
  describe "#insert(data)" do
    it "properly inserts new nodes" do
      tree.insert(root, dark_knight)
      tree.insert(root, pirates)
      tree.insert(root, spider_man)
      tree.insert(root, furious_7)
      tree.insert(root, transformers)
      tree.insert(root, skyfall)
      tree.insert(root, lotr)
      tree.insert(root, american_sniper)
      tree.insert(root, act_of_valor)
      tree.insert(root, lone_survivor)
      tree.insert(root, zero_dark_thirty)
      
      tree.printf
      expect(output).to_not be_nil
    end
  end
end