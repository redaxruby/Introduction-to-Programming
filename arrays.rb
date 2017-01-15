#ex1
arr = [1,3,5,7,9,11]
number = 3
p arr.include?(3)

#ex2
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
arr = [["test", "hello", "world"], ["example", "mem"]]
p arr[1][0]


#ex4
arr = [15, 7, 18, 5, 12, 8, 5, 1]

arr.index(5) # => 3
# arr.index[5] # => NoMethodError
arr[5] # => 8

#ex5
string = "Welcome to America!"
a = string[6] # => "e"
b = string[11] # => "A"
c = string[19] # => nil

#ex6
names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = 'jody'
#TypeError: no implicit conversion of String into Integer
names[3] = 'jody'
names # => ["bob", "joe", "susan", "jody"]

#ex7

arr = [1,2,3]
arr_map = []
arr.map do |n|
	arr_map << n * 2
end
p arr
p arr_map















