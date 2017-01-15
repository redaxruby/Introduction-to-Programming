def has_a_b?(string)
	if /b/.match(string)
		puts "We have a match"
	else
		puts "No match"
	end
end

has_a_b?("baskertball")
has_a_b?("football")
has_a_b?("hockey")
has_a_b?("golf")

def test(b)
	b.map! { |letter| "I like the letter: #{letter}"}
end

a = ['a','b','c']
puts test(a)
p a