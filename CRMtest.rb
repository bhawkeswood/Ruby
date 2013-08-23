require "crmcontact"
require "crmdatabase"

class CRM
	
	def running_the_app
		display_the_menu
		receive_user_input
		send_user_to_selection
	end

	def display_the_menu
		puts "--------------------------------------------------------------------"
		puts "Choose one of the numbers to make your selection."
		puts "---------------------------------------------------------------------"
		puts "[A] Add a new contact"
	    puts "[B] Modify an existing contact"
	    puts "[C] Delete a contact"
	    puts "[D] Display all the contacts"
	    puts "[E] Display the attributes for all contacts"
	    puts "[X] Exit the program :("
	    puts "--------------------------------------------------------------------"
	    puts "Choose wisely..."
	    puts "--------------------------------------------------------------------"
	end

	def receive_user_input
		@user_selection = gets.chomp.upcase
	end
	
	def add_new_contact
		print "Enter First Name: "
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
  		running_the_app
	end

	def display_all
		Database.contacts.each do |contact|
			puts "--------------------------------------------------------------------------------"
			puts "Contact:"
			puts "First Name: #{contact.first_name}" 
			puts "Last Name: #{contact.last_name}"
			puts "Email: #{contact.email}"
			puts "Notes: #{contact.note}"
			puts "ID: #{[contact.id]}"
		end
	end

	def show_the_attributes
		puts "------------------------------------------------------------------------------"
		puts "Which property would like to see for all?"
		puts "------------------------------------------------------------------------------"
		puts "[A] First Name"
		puts "[B] Last Name"
		puts "[C] Email Address"
		puts "[D] Note"
		attribute_choice = gets.chomp.upcase
			if attribute_choice == "A"
				Database.contacts.each do |contact|
					puts "#{contact.id}, #{contact.first_name}"
				end
			elsif attribute_choice == "B"
				Database.contacts.each do |contact|
					puts "#{contact.id}, #{contact.last_name}"
				end
			elsif attribute_choice == "C"
				Database.contacts.each do |contact|
					puts "#{contact.id}, #{contact.email}"
				end
			elsif attribute_choice == "D"
				Database.contacts.each do |contact|
					puts "#{contact.id}, #{contact.note}"
				end
			else
				show_the_attributes
				
			end
		running_the_app		
		
		
	end


	def send_user_to_selection

		if @user_selection == "A"
			add_new_contact
		elsif @user_selection == "B"
			#modify_existing_contacts
		elsif @user_selection == "C"
			#deleting_a_contact
		elsif @user_selection == "D"
			display_all
		elsif @user_selection == "E"
			show_the_attributes
		elsif @user_selection == "X"
			return  puts "****************  Bye bye!  *******************"
		else
			puts "------------------------------------------------------------------"
			puts "You have chosen... poorly.  Try again please."
			puts "-------------------------------------------------------------------"
			running_the_app
		end
	end
end



crm = CRM.new
crm.running_the_app

