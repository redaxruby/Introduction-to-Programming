#exercise 1
#Write a program called name.rb that asks the user to type in their name and then prints out a greeting message with their name included.
print "Please type in your name: "
name = gets.chomp
puts "Welcome #{name}"

#exercise 2
#Write a program called age.rb that asks a user how old they are and then tells them how old they will be in 10, 20, 30 and 40 years. Below is the output for someone 20 years old.

puts "How old are you? "
age = gets.chomp.to_i
[10,20,30,40].each do |years|
	puts "In #{years} years you will be: "
	puts age + years
end

#exercise3
#Add another section onto name.rb that prints the name of the user 10 times. You must do this without explicitly writing the puts method 10 times in a row. Hint: you can use the times method to do something repeatedly.

print "Please enter your name: "
second_name = gets.chomp
10.times do
	puts second_name
end

#exercise4
#Modify name.rb again so that it first asks the user for their first name, saves it into a variable, and then does the same for the last name. Then outputs their full name all at once.
print "Please enter your first name: "
first_name = gets.chomp
print "Please enter your last name: "
last_name = gets.chomp
puts "#{first_name} #{last_name}"

#exercise 5
#Look at the following programs...
x = 0
3.times do
	x += 1
end
puts x

#and...
y = 0
3.times do
	y += 1
	x = y
end
puts x

#What does x print to the screen in each case? Do they both give errors? Are the errors different? Why?

#variables.rb:48:in `<main>': undefined local variable or method `x' for main:Object (NameError)

#x variable in the second program is only local to the block


#exercise 6
#What does the following error message tell you?
#NameError: undefined local variable or method `shoes' for main:Object
#from (irb):3
#from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'

#answer: ruby does not know if 'shoes' is a variable or method


