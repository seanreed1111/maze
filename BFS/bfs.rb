require '../lib/Queue'

	frontier = Queue.new
	neighbors = {}
	neighbors = {:a => [:b,:f], :b => [:c,:d], :c => [:e], :d =>[:e], :e =>[:c,:d], 
					:f => [:a,:g,:h,:i], :g => [:f], :h => [:f], :i => [:f] }
	parent = {}
	visited = []. #refactor visited as a hash, e.g. visited[:a] = true if we've visited :a

	
# :a is the source node for BFS search. Put :a into the frontier queue
	parent[:a] = nil
	frontier.enqueue(:a)


	while !frontier.empty? do
		frontier.each do |node| 
			neighbors[node].each do |neighbor|
				if frontier.include?(neighbor) || visited.include?(neighbor) 
					next
				else
					frontier.enqueue(neighbor)
					parent[neighbor] = node
				end
			end
		end
		visited << frontier.dequeue # make visited into a hash. see above

	end

puts "parent = #{parent}"
puts "frontier = #{frontier.queue}"
puts "visited = #{visited}"

#begin to work out what I want in the class BFS
class BFS
	#need adjacency list to be an input?
	#want it to work on different representations, e.g. both graphs or mazes should work
	#or, need to be able to parse the data input to implement 
	#the adjacency list
	#v.neighbors, because you need to figure out where to go next
		
end
