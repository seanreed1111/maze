require '../lib/Queue'

	#this test PASSED!!!!
# 	frontier = Queue.new
# 	neighbors = {}
# 	neighbors = {:a => [:b,:c,:d], :b => [:a,:d], :c => [:a, :d], :d =>[:e], :e =>[:d] }
# 	parent = {}
# 	visited = []
# # :a is the source node for BFS search. Put :a into the frontier queue
# 	parent[:a] = nil
# 	frontier.enqueue(:a)


	frontier = Queue.new
	neighbors = {}
	neighbors = {:a => [:b,:f], :b => [:c,:d], :c => [:e], :d =>[:e], :e =>[:c,:d], 
					:f => [:a,:g,:h,:i], :g => [:f], :h => [:f], :i => [:f] }
	parent = {}
	visited = []
# :a is the source node for BFS search. Put :a into the frontier queue
	parent[:a] = nil
	frontier.enqueue(:a)


#	puts "frontier = #{frontier.queue}"

	while !frontier.empty? do
		frontier.queue.each do |node| # need to write a .each method for Queue class
			# puts "frontier = #{frontier.queue}"
			# puts "node = #{node}"
			neighbors[node].each do |neighbor|

				# puts "neighbor = #{neighbor}"
				if visited.include?(neighbor) || frontier.include?(neighbor)
					next
				else
					# puts "adding #{neighbor} to queue"
					frontier.enqueue(neighbor)
					parent[neighbor] = node
				end
			end
		end
		visited << frontier.dequeue 
#		sleep(3.25)
		# puts "after sleep, parent = #{parent}"
		# puts "after sleep, frontier = #{frontier.queue}"
		# puts" after sleep, visited = #{visited.inspect}"
	end

puts "parent = #{parent}"
puts "frontier = #{frontier.queue}"
puts "visited = #{visited}"

