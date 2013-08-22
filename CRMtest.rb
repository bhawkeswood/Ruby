require "crmcontact"
require "crmdatabase"

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
		puts "[A] Add a new contact"
	    puts "[B] Modify an existing contact"
	    puts "[C] Delete a contact"
	    puts "[D] Display all the contacts"
	    puts "[E] Display the attribute for all contacts"
	    puts "[X] Exit the program :("
	    puts "Choose wisely..."
	end

	def receive_user_input
		@user_selection = gets.chomp.upcase
	end
	
	def add_new_contact
		print "Enter First Name:"
		first_name = gets.chomp
  		print "Enter Last Name: "
  		last_name = gets.chomp
  		print "Enter Email Address: "
  		email = gets.chomp
 		print "Enter a Note: "
  		note = gets.chomp
  		contact = Contact.new(first_name, last_name, email, note)
  		Database.add_contact(contact)
  		Database.contacts
	end

	def send_user_to_selection

		if @user_selection == "A"
			add_new_contact
		elsif @user_selection == "B"
			#running_
		elsif @user_selection == "C"
			#running_the_app
		elsif @user_selection == "D"
			#running_the_app
		elsif @user_selection == "E"
			#running_the_app
		elsif @user_selection == "X"
			return  puts "Bye bye!"
		else
			puts "That's not one of the choices dummy!  Look again"
			running_the_app
		end
	end
end



crm = CRM.new
crm.running_the_app

