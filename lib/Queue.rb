class Queue
	attr_reader :queue

	def initialize
		@queue = Array.new
	end

	def enqueue(item)
		@queue.unshift(item)
	end

	#removes item at the front of the queue. returns the removed item
	def dequeue
		@queue.pop
	end

	def size
		@queue.length
	end

	def empty?
		size == 0 ? true : false	
	end
	
	def include?(item)
		@queue.include?(item) ? true : false
	end

	def each
		@queue.each
	end
end