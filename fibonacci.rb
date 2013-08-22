def fibo_finder(n)
	if n <= 1
		n
	else
		fibo_finder(n-1) + fibo_finder(n-2) 
	end
end

puts fibo_finder(10)