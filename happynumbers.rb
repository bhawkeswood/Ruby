def happy_numbers(x)
  [] << x.to_s.split
  [].each { |halves| halves ** 2}
  	if happy_numbers == 1
  		puts "true"
  	else 
  		return
  	end

end

puts happy_numbers(10)

