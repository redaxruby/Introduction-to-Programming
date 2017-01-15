#ex1
#Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.

words = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

words.each do |word|
	word.match(/lab/) ? 
				puts("#{word} is a match") : puts("#{word} is no match")
end

#ex2
#What will the following program print to the screen? What will it return?
def execute(&block)
	block
end

execute { puts "Hello from inside the execute method"}

# => program will print nothing to the screen as execute method is missing the call function

#ex3
#What is exception handling and what problem does it solve?

#Exception is synonymous with errors in the program. It is raised when a program can't execute a certain function 
#e.g 1 + '1' which will raise a TypeError


#ex4
#Modify the code in exercise 2 to make the block execute properly.
def execute(&block)
	block.call
end

execute { puts "Hello from inside the execute method"}

#ex5
#Why does the following code...
def execute(block)
	block.call
end

#Give us the following erro when we run it?
#block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
#from test.rb:5:in `<main>'

# => the block argument is missing an & and Ruby is interpreting it as an argument and not expecting a block

