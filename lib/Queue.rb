class Queue
	include Enumerable

	attr_reader :queue

	def initialize
		@queue = Array.new
	end

	#enqueue(item) adds item to the end of the queue
	def enqueue(item)
		@queue.unshift(item)
	end

	#dequeue removes the item at the front of the queue. It returns the removed item.
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

	#extends each method to class Queue per http://stackoverflow.com/questions/2080007/how-do-i-add-each-method-to-ruby-object-or-should-i-extend-array
	def each(&block)
		@queue.each(&block)
	end
end