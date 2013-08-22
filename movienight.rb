movies = Hash.new

movies = { Matrix: 4,
    Air_Force_One: 1,
    Finding_Nemo: 3,
    Inglourious_Basterds: 4
    }
    
puts "What do you want to do to the database?"
puts "Type 'add' to add a new film."
puts "Type 'delete' to remove an unwanted film."
puts "Type 'update' to re-review a film."
puts "Type 'display' to see the film on file."
choice=gets.chomp.downcase


# Adding New Movies
case choice
when 'add'
  puts "What movie do you wish to add?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "What's the rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been added with a rating of #{rating}."
  else
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end
when 'update'
  puts "What movie do you want to update?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "I've never heard of that one before!"
  else
    puts "What's the new rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been updated with new rating of #{rating}."
  end
#Showing Current Films
when "display"
    movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
end
#Removing Films
when "delete"
    puts "Which film would you like to remove?"
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "It's pretty tough to get rid of something that doesn't exist!"
    else
      movies.delete(title)
      puts "#{title} has been erased from the database.  I hope you know what you're doing..."
    end
else
    puts "Did you actually read the choices?"
end
    