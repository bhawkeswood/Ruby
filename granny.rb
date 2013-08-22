puts "NICE TO SEE YOU SONNY!"

input = gets.chomp

if
	while input != input.upcase
		puts "GOTTA SPEAK UP THERE KIDDO!"
		gets.chomp
	end
else input == input.upcase
	puts "NOPE, HAVEN'T SEEN HIM FOR MORE THAN " + rand(25 .. 67) + " YEARS!"
end