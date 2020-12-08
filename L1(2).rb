def numbers(a, b)
	pale = 20
	if((a == pale) || (b == pale))
		return pale
	else 
		return (a + b)
	end
end

print '¬ведите первое число: '
a = gets.to_i
print '¬ведите второе число: '
b = gets.to_i

puts ": #{numbers(a, b)}"