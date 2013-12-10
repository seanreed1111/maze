class DFS

	attr_reader :adj_list, :parent

	def initialize(adj_list={})
		@adj_list = adj_list
		@parent = {}
	end

	def dfs_run!(starting_node)
		@parent[starting_node] = :none
		dfs_visit!(starting_node, @adj_list[starting_node])
	end

	def dfs_visit!(node, adj_list_of_node)
		adj_list_of_node.each do |vertex|
			if !(parent.has_key?(vertex)) #if vertex is NOT in parent hash, it has not been explored
				parent[vertex] = node
				dfs_visit!(vertex,@adj_list[vertex])
			end
		end
	end

end
