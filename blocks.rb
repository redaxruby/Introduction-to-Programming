#passing_block
def take_block(&block)
	block.call
end

take_block do
	puts "Block is being called in the method!"
end

take_block { puts "Block is being called in the method!" }

def take_block(number, &block)
	block.call(number)
end

number = 42
take_block(number) do |num|
	puts "No argument in the Block is being called in the method! #{num}"
end

#proc_example.rb 

talk = Proc.new do
	puts "I am talking."
end

talk.call

#proc_example2.rb 
talk = Proc.new do |name|
	puts "I am talking to #{name}"
end

talk.call "Bob"

#passing_proc.rb 
def take_proc(proc_arg)
	[1,2,3,4,5].each do |number|
		proc_arg.call(number)
	end
end

proc = Proc.new do |number|
	puts "#{number}. Proc is being called in the method"
end

take_proc(proc)





















