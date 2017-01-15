#exercise 1
#Write a program that prints a greeting message. This program should contain a method called greeting that takes a name as its parameter and returns a string.

def greeting(name)
	puts "Hello #{name}"
end


#exercise 2
#What do the following expressions evaluate to?
x = 2 #=> 2

puts x = 2 # 2 => nil

p name = "Joe" #=> "Joe"

four = "four" #=> "four"

print something = "nothing" # "nothing" => nil

#exercise 3
#Write a program that includes a method called multiply that takes two arguments and returns the product of the two numbers.

def multiply(a,b)
	a * b
end

#exercise 4
#What will the following code print to the screen?

def scream(words)
	words = words + "!!!"
	return
	puts words
end

scream("Yippee")

#answer: nothing as return has no value

#ex5
#1) Edit the method in exercise #4 so that it does print words on the screen. 2) What does it return now?
def scream(words)
	p words = words + "!!!"
end

scream("Yippee")

#It returns the words concatenated with the 3 bangs

#ex6 
#What does the following error message tell you?
#ArgumentError: wrong number of arguments (1 for 2)
#program is expecting 2 arguments but only 1 given











