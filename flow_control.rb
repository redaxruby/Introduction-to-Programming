#ex1
(32 * 4) >= 129 #=> false
false != !true #=> false
true == 4 # => false
false == (847 == '847') # => true
(!true || (!(100 / 5) == 20 ) || ((328 / 4) == 82)) || false # => false

#ex2
def string(arg)
	if arg.length > 10
		puts arg.upcase
	else
		puts "String argument not long enough"
	end
end

string("hello world!")
string("hi")

#ex3
def number
	print "Please enter a number: "
	arg = gets.chomp.to_i
	if arg >= 0 && arg <= 50
		puts "#{arg} is between 0 and 50"
	elsif arg > 50 && arg <= 100
		puts "#{arg} is between 51 and 100"
	else
		puts "#{arg} is above 100"
	end
end


#ex4
'4' == 4 ? puts("TRUE") : puts("FALSE") # => FALSE

x = 2 
if ((x * 3) / 2) == (4 + 4 - x - 3) 
	puts "Did you get it right?"
else
	puts "Did you?"
end
# => "Did you get it right?"

y = 9
x = 10
if (x + 1) <= (y)
	puts "Alright."
elsif (x + 1) >= (y)
	puts "Alright now!"
elsif (y + 1) == x
	puts "ALRIGHT NOW!"
else
	puts "Alrighty"
end			
# => "Alright now"


#ex5
def number
	print "Please enter a number: "
	arg = gets.chomp.to_i
	case
	when arg >= 0 && arg <= 50
		puts "#{arg} is between 0 and 50"
	when arg > 50 && arg <= 100
		puts "#{arg} is between 51 and 100"
	when arg > 100
		puts "#{arg} is above 100"
	end
end

#ex6
def equal_to_four(x)
	if x == 4
		puts "yup"
	else
		puts "nope"
	end #=> missing in question
end

equal_to_four(5)

#answer: if statement needs an end to be completed








