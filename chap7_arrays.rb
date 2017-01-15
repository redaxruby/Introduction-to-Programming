#ex1
#Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.
arr = [1,3,5,7,9,11]
number = 3
p arr.include?(3)

#ex2
#What will the following programs return? What is value of arr after each?
arr = ["b", "a"]
arr = arr.product(Array(1..3))
arr.first.delete(arr.first.last)
# => 1
# arr = [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

arr = ["b", "a"]
arr = arr.product([Array(1..3)])
p arr.first.delete(arr.first.last)
# => [1,2,3]
# => [["b", [1, 2, 3]], ["a", [1, 2, 3]]]

#ex3
#How do you print the word "example" from the following array?
arr = [["test", "hello", "world"], ["example", "mem"]]
p arr[1][0]


#ex4
#What does each method return in the following example?


arr = [15, 7, 18, 5, 12, 8, 5, 1]

arr.index(5) # => 3
# arr.index[5] # => NoMethodError
arr[5] # => 8

#ex5
#What is the value of a, b, and c in the following program?
string = "Welcome to America!"
a = string[6] # => "e"
b = string[11] # => "A"
c = string[19] # => nil

#ex6
#You run the following code...
names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = 'jody'
#...and get the following error message:
#TypeError: no implicit conversion of String into Integer
#What is the problem and how can it be fixed?

# => arrays can only be changed via their index numbers
names[3] = 'jody'
names # => ["bob", "joe", "susan", "jody"]

#ex7
#Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original array by a value of 2. You should have two arrays at the end of this program, The original array and the new array you've created. Print both arrays to the screen using the p method instead of puts.
arr = [1,2,3]
arr_map = []
arr.map do |n|
	arr_map << n * 2
end
p arr # => [1,2,3]
p arr_map # => [2,4,6]

