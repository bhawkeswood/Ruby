class Game
	
	def play_game
	  introduce_the_game
	  get_a_word
	  hide_the_word
	  while @word != @user_word
        guess_the_word
        match_the_letter
      end
	end

	def introduce_the_game
	  puts "Welcome to Hangman! User A, please choose a word to be guessed!"
	end  

	def get_a_word
	  @word = gets.chomp.downcase
	  puts "Now, user B, input one letter at a time to guess the word.  The program ends once you are successful."
	end


	def hide_the_word
	  @user_word = @word.gsub(/\w/, "_")
	  puts @user_word
	end

	def guess_the_word
	  puts "So...  Guess a letter dude."
	  @input = gets.chomp
	end

	def match_the_letter
	  index = 0
	  @word.each_char do |l|
	  	if l == @input
	  	  @user_word[index] = @input
	  	end
	  index += 1
	  end
	
	puts @user_word
	end
end

game = Game.new
game.play_game
puts "Nice work!"

