#Execise 1
#Add two strings together that, when concatenated, return #your first and last name as your full name in one string.

first_name = "John"
last_name = "Doe"
puts first_name + " " + last_name
#=> "John Doe"

#Exercise 2
#Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the:
thousands = 4321 / 1000
hundreds = 4321 % 1000 / 100
tens = 4321 % 1000 % 100 / 10
ones = 4321 % 1000 % 100 % 10


#Exercise 3
#Write a program that uses a hash to store a list of movie titles with the year they came out. Then use the puts command to make your program print out the year of each movie to the screen. The output for your program should look something like this.

best_picture = 
				{"1975" => "One Flew Over The Cuckoo's Nest",
				"2004" => "Crash",
				"2013" => "12 Years a Slave",
			  "2001" => "A Beautiful Mind",
			  "1981" => "Chariots of Fire"
			  }
year_released = []
best_picture.each do |year, title|
	puts year
	year_released << year
end

#Exercise 4
#Use the dates from the previous example and store them in an array. Then make your program output the same thing as exercise 3.


year_released.each do |year|
	puts year
end

#Exercise 5
#Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.

[5,6,7,8].each do |n|
	puts (1..n).reduce(:*)
end

#Exercise 6
#Write a program that calculates the squares of 3 float numbers of your choosing and outputs the result to the screen.
[1.32, 2.34, 5.64].each do |n|
	p n * n
end

#Exercise 7
#What does the following error message tell you?
#Answer: It's a syntax error. Ruby expects '}' but was given this ')'
