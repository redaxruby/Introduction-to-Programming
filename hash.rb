#ex1
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
person = {name: "Bob", occupation: "web developer", hobbies: "painting"}
p person[:name]

#ex5
person = {name: "Bob", occupation: "web developer", hobbies: "painting"}
person.has_value?("Bob")

#ex6
words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live', 'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide' ,'flow', 'neon']

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
x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

#First hash uses a symbol ':x' to assign a value whereas the second hash uses the variable x to assign the value 

# my_hash = {x: "some value"}
# => {:x=>"some value"}

# my_hash2 = {x => "some value"}
# => {"hi there"=>"some value"}


#ex8
#NoMethodError: undefined method `keys' for Array

#answer: B; there is no such method for keys in an Array


