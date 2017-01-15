#ex1
#What does the each method in the following program return after it is finished executing?

x = [1,2,3,4,5]
x.each do |a|
	a + 1
end
# => [1,2,3,4,5]

#ex2
#Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.
puts "Tell me what to do: "
input = $stdin.gets.chomp
while input != "STOP"
	puts "Simon says #{input}"
end

#ex3
#Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.
array = ["apple", "orange", "banana"]
array.each_with_index do |arr, i|
	puts "#{i + 1}. #{arr}"
end

#ex4
#Write a method that counts down to zero using recursion.

def count_down(num)
	puts num
	if num != 0
		count_down(num - 1)
	end
end

count_down(10)







