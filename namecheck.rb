puts "Hello, what's your name?"
name = gets.chomp.capitalize
puts "Oh, hello there " + name + "!"
if (name == "Brendon" or name == "Megumi")
	puts "What a splendid name!"
else
	puts "Hmmm...  Not my favorite name, but it suits you just fine, " + name + "."
end