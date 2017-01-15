#1.Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
array = [1,2,3,4,5,6,7,8,9,10]
array.each { |n| p n }

#2. Same as above, but only print out values greater than 5.
array.each { |n| p n if n > 5}

#3. Now, using the same array from #2, use the select method to extract all odd numbers into a new array.

p array.select { |n| n.odd? }

#4. Append "11" to the end of the original array. Prepend "0" to the beginning.

array << 11
array.unshift(0)
p array

#5. Get rid of "11". And append a "3".

array.pop[11]
array << 3
p array

#6. Get rid of duplicates without specifically removing any one value.

array.uniq!
p array

#7. What's the major difference between an Array and a Hash?

#=> An array is more of a list of items while a hash contains keys and values which users can use to extract data from

#8. Create a Hash using both Ruby syntax styles.
hash = {}
hash = Hash.new

#9. Suppose you have a hash h = {a:1, b:2, c:3, d:4}
#1 Get the value of key `:b`.
h = {a:1, b:2, c:3, d:4}
p h[:b]
#2 Add to this hash the key:value pair `{e:5}`
h.merge!(e:5)
p h
#3 Remove all key:value pairs whose value is less than 3.5
h.each do |k,v|
	h.delete(k) if v < 3.5
end
p h

#10 Can hash values be arrays? Can you have an array of hashes? (give examples)

# => yes

# e.g. array = [ 
					# { name: "bob", age: 40, height: 181cm},
					# { name: "joe", age: 30, height: 164cm} ]

#11. Look at several Rails/Ruby online API sources and say which one you like best and why.

# => ?

#12 & ex14
#Given the following data structures. Write a program that moves the information from the array into the empty hash that applies to the correct person.

contact_data = [
	["joe@email.com", "123 Main st.", "555-123-4567"],
	["sally@email.com", "404 Not Found Dr.", "123-234-3454"]
]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

contacts.each_with_index do |(name, hash), idx|
	fields.each do |field|
		hash[field] = contact_data[idx].shift
	end
end

p contacts

#13
#Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?
puts "Joe's email is #{contacts["Joe Smith"][:email]}"
puts "Sally's phone number is #{contacts["Sally Johnson"][:phone]}"

#ex15
#Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.
arr = ["snow", "winter", "ice", "slippery", 
												 "salted roads", "white trees"]
p arr.delete_if { |word| 	word.start_with?("s") }

#Then recreate the arr and get rid of all of the words that start with "s" or starts with "w".
p arr.delete_if { |word| 	word.start_with?("s") || 
													word.start_with?("w") }


#ex16
#Take the following array and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.

a = ['white snow', 'winter wonderland', 'melting ice', 
			'slippery sidewalk', 'salted roads', 'white trees']
array = []
a.each do |word|
	 array << word.split(' ')
end

p array.flatten


#ex17
#What will the following program output?
hash1 = { shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = { "hat" => "adidas", :shoes => "nike", hoodie: true }

if hash1 == hash2
	puts "These hashes are the same!"
else
	puts "These hashes are not the same"
end


































