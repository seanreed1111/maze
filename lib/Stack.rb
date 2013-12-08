class SimpleStack
	def initialize
		@stack = Array.new
	end

	#returns and removes the first item in the stack
	def pop 
		@stack.pop
	end

	#pushes item to stack and returns @stack 
	def push(item) 
		@stack.push(item)
	end

	def size
		@stack.length
	end
end

stack = SimpleStack.new(%w(1 2 3 4 5 tom))
puts "stack.size = #{stack.size}"

puts " now popping stack"
puts "stack.pop returns #{stack.pop}" 
puts " now popping stack"
puts "stack.pop returns #{stack.pop}" 
puts "stack.size = #{stack.size}"
puts "pushing a new item to the stack... #{stack.push("bobby brown")}"
puts "stack.size = #{stack.size}"
puts "Now popping all items off the stack, will check for errors on pop"
10.times {stack.pop}
puts "all done! stack.size = #{stack.size}"	