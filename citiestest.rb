puts "I'd you you to tell me your five favorite cities please"
puts "Let's start with number one on your list.  What is it?"
first=gets.chomp

puts "And the second?"
second=gets.chomp

puts "What's your third favorite?"
third=gets.chomp

puts "Number four?"
fourth= gets.chomp

puts "And the fifth in your top five?"
fifth=gets.chomp

cities=["1st: #{first}" , "2nd: #{second}" , "3rd: #{third}" , "4th: #{fourth}" , "5th: #{fifth}" ].capitalize

puts "So, in order they are..."
puts cities
puts "Right?"