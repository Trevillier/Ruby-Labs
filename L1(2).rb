def numbers(a, b)
	pale = 20
	if((a == pale) || (b == pale))
		return pale
	else 
		return (a + b)
	end
end

print '������� ������ �����: '
a = gets.to_i
print '������� ������ �����: '
b = gets.to_i

puts ": #{numbers(a, b)}"