#ex1
x = [1,2,3,4,5]
x.each do |a|
	a + 1
end
# => [1,2,3,4,5]

#ex2
puts "Tell me what to do: "
input = $stdin.gets.chomp
while input != "STOP"
	puts "Simon says #{input}"
end

#ex3
array = ["apple", "orange", "banana"]
array.each_with_index do |arr, i|
	puts "#{i + 1}. #{arr}"
end

#ex4
def count_down(num)
	puts num
	if num != 0
		count_down(num - 1)
	end
end

count_down(10)







