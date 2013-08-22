class CRM

	def running_the_app
		display_the_menu
		receive_user_input
		send_user_to_selection
		#function_in_selection
		#send_user_to_menu
	end

	def display_the_menu
		puts "Choose one of the numbers to make your selection."
		puts "[1] Add a new contact"
	    puts "[2] Modify an existing contact"
	    puts "[3] Delete a contact"
	    puts "[4] Display all the contacts"
	    puts "[5] Display the attribute for all contacts"
	    puts "[0] Exit the program :("
	    puts "Choose wisely..."
	end

	def receive_user_input
		@user_selection = gets.chomp
	end

	def send_user_to_selection

		if @user_selection == 1
			running_the_app
		elsif @user_selection == 2
			running_the_app
		elsif @user_selection == 3
			running_the_app
		elsif @user_selection == 4
			running_the_app
		elsif @user_selection == 5
			running_the_app
		elsif @user_selection == 0
			running_the_app
		else
			puts "That's not one of the choices dummy!  Look again"
			running_the_app
		end
	end
end

class People
	def prompt
		puts "Please enter a first name for a contact"
	end		 

crm = CRM.new
crm.running_the_app

