# # #exception_example

# # begin
# # 	#perform an operation
# # rescue
# # 	#do this if operation fails
# # 	#e.g. log the error
# # end

# #exception_example

# names = ['bob', 'joe', 'steve', nil, 'frank']
# names.each do |name|
# 	begin 
# 		puts "#{name}'s name has #{name.length} letters in it."
# 	rescue
# 		puts "Something went wrong"
# 	end
# end

# #inline_exception
# zero = 0

# puts "Before each call"
# zero.each { |element| puts element } rescue puts "Can't do that!"
# puts "After each call"

# #divide.rb

# def divide(number, division)
# 	begin
# 		answer = number / division
# 	rescue ZeroDivisionError => e
# 		p e.message
# 	end
# end

# puts divide(16,4)
# puts divide(4,0)
# puts divide(14,7)

# def greet(person)
# 	begin
# 		puts "Hello, " + person
# 	rescue TypeError => e
# 		puts e.message
# 	end
# end

# greet("John")
# greet(1)

def spaced_out_letters(person)
	return person.split("").join(" ")
end

def greet(person)
	return "H e l l o, " + spaced_out_letters(person)
end

def decorate_greeting(person)
	puts "" + greet(person) + ""
end

decorate_greeting("John")
decorate_greeting(1)

























