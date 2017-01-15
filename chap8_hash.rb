#ex1
#Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only immediate family members' names into a new array.
family = {
	uncles: 	["bob", "joe", "steve"],
	sisters: 	["jane", "jill", "beth"],
	brothers: ["frank", "rob", "david"],
	aunts: 		["mary", "sally", "susan"]
}

imm = []
family.select do |k,v|
	imm << v if k == :sisters || k == :brothers
end

p imm.flatten

#ex2
#Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.
person = {name: "Bob", age: 42}
new_hash = {height: "6 ft", weight: "180 lbs"}
person.merge(new_hash)
# => {:name=>"Bob", :age=>42, :height=>"6 ft", :weight=>"180 lbs"}
# person
# => {:name=>"Bob", :age=>42}
person.merge!(new_hash)
# => {:name=>"Bob", :age=>42, :height=>"6 ft", :weight=>"180 lbs"}
# person
# => {:name=>"Bob", :age=>42, :height=>"6 ft", :weight=>"180 lbs"}

#ex3
#Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. Then write a program that does the same thing except printing the values. Finally, write a program that prints both.
person = {:name=>"Bob", :age=>42, :height=>"6 ft", :weight=>"180 lbs"}
person.each do |key, value|
	puts "#{key}"
end

person.each do |key,value|
	puts "#{value}"
end

person.each do |key,value|
	puts "Bob's #{key} is #{value}"
end

#ex4
#Given the following expression, how would you access the name of the person?
person = {name: "Bob", occupation: "web developer", hobbies: "painting"}
p person[:name]

#ex5
#What method could you use to find out if a Hash contains a specific value in it? Write a program to demonstrate this use.
person = {name: "Bob", occupation: "web developer", hobbies: "painting"}
person.has_value?("Bob")

#ex6
#Given the array...
words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live', 'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide' ,'flow', 'neon']

#Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order. Your output should look something like this:

#first solution
anagrams = {}
words.each do |word|
	anagrams[word.split('').sort.join] ||= []
	anagrams[word.split('').sort.join] << word
end
p anagrams.values

#second solution
p words.group_by { |word| word.chars.sort }.values


#ex7
#Given the following code...

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

#What's the difference between the two hashes that were created?

#First hash uses a symbol ':x' to assign a value whereas the second hash uses the variable x to assign the value 

# my_hash = {x: "some value"}
# => {:x=>"some value"}

# my_hash2 = {x => "some value"}
# => {"hi there"=>"some value"}


#ex8
#If you see this error, what do you suspect is the most likely problem?
#NoMethodError: undefined method `keys' for Array
#A. We're missing keys in an array variable.

#B. There is no method called keys for Array objects.

#C. keys is an Array object, but it hasn't been defined yet.

#D. There's an array of strings, and we're trying to get the string keys out of the array, but it doesn't exist.


#answer: B; there is no such method for keys in an Array


