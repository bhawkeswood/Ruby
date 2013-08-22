puts 'What is your first name?'
fname = gets.chomp
puts "Hi there, " + fname + ".  What's your middle name?"
mname = gets.chomp
puts "Got it.  And what is your last name if you don't mind me asking?"
lname = gets.chomp
puts "So it's, " + fname + " " + mname + " " + lname + ", right?"
long = fname.length + mname.length + lname.length
puts "Did you know that your name is " + long.to_s + " letters long?"
