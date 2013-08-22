puts "Tell my your three favorite food please."

puts "What's number 1 for you?"
fooda = gets.chomp

puts = "Got it!  And your second favorite?"
foodb = gets.chomp

puts = "And finally... number 3?"
foodc = gets.chomp

array = [fooda, foodb, foodc]

array.each { |food| puts "So, your favorites are " + food + "?  Interesting"}


#This programs returns the string in the last line three times, each time returning
#the vaules 'fooda' 'foodb' etc... doesnt ask all three questions either