class GraphNode

  attr_accessor :val, :neighbors

  def initialize(val)
    self.val = val
    self.neighbors = []
  end

end

  def bfs(starting_node, target_value)
    
    q = [starting_node]
    visited_nodes = []

    while !q.empty?
        current_node = q.shift
        visited_nodes << current_node
        return current_node if current_node.val == target_value
        current_node.neighbors.each do |neighbor|
            q << neighbor unless visited_nodes.include?(neighbor)
        end
    end
    nil
  end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
p a.neighbors = [b, c, e]
p c.neighbors = [b, d]
p e.neighbors = [a]
p f.neighbors = [e]

p bfs(a, "b")
p bfs(a, "f")