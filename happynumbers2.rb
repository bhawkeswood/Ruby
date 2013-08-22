=begin take each individual digit, square it, and then sum the squares to get 
a new number. Repeat with the new number and eventually, you might get 
to a number whose squared sum is 1. This is a happy number. An unhappy 
number (or sad number) is one that loops endlessly. Write a function 
that determines if a number is happy or not. 
=end


#take a number - done
def happy_number?(number)  

	previous_number = []

	while number != 1

#split into separate digits
	digits = number.to_s.split("")

#map is a method in ruby where if you give it an array, it will looop through
#each in an array and give back a new array; same as .collect


#convert each digit string to an integer    and then square each digit
	digits.map! {|digit| digit.to_i **2 }

	#sum the squares to get a new number 

	number = digits.inject(0) {|sum, i| sum + i}
	if previous_number.include?(number)
		return	false
	end
	previous_number << number



	#sum = 0
	#digits.each {|i| sum = sum + i}

	#rinse and repeat 

	end
	return true 
end

p happy_number?(986543211)
#puts happy_number?(986543210).inspect 



