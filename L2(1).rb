def CSfinder(word)
	if((word[-3] + word[-2]) == "cs")
		return 2 ** (word.size - 1)
	else return (word.chop).reverse
	end
end

print 'Input your word: '
word = gets.to_s
puts "Answer: #{CSfinder(word)}"