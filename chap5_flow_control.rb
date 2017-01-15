#ex1
#Write down whether the following expressions return true or false. Then type the expressions into irb to see the results.
(32 * 4) >= 129 #=> false
false != !true #=> false
true == 4 # => false
false == (847 == '847') # => true
(!true || (!(100 / 5) == 20 ) || ((328 / 4) == 82)) || false # => false

#ex2
#Write a method that takes a string as argument. The method should return the all-caps version of the string, only if the string is longer than 10 characters. Example: change "hello world" to "HELLO WORLD". (Hint: Ruby's String class has a few methods that would be helpful. Check the Ruby Docs!)

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
#Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.

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
#What will each block of code below print to the screen? Write your answer on a piece of paper or in a text editor and then run each block of code to see if you were correct.

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
#Rewrite your program from exercise 3 using a case statement. Wrap the statement from exercise 3 in a method and wrap this new case statement in a method. Make sure they both still work.

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
#When you run the following code...

def equal_to_four(x)
      if x == 4
        puts "yup"
      else
        puts "nope"
    end

equal_to_four(5)

#You get the following error message..

#test_code.rb:96: syntax error, unexpected end-of-input, expecting keyword_end

#Why do you get this error and how can you fix it?

def equal_to_four(x)
	if x == 4
		puts "yup"
	else
		puts "nope"
	end #=> missing in question
end

equal_to_four(5)

#answer: if statement needs an end to be completed








