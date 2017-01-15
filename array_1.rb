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














