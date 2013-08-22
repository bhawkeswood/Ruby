class CRM
    def print_main_menu
    	puts "[A] Add a new contact"
	    puts "[B] Modify an existing contact"
	    puts "[C] Delete a contact"
	    puts "[D] Display all the contacts"
	    puts "[E] Display the attribute for all contacts"
	    puts "[X] Exit the program :("
	    puts "Choose wisely..."
    end

	def main_menu
		print_main_menu
		user_selected = gets.upcase.chomp
		call_option(user_selected)
	end

	def call_option(user_selected)
		add_new_contact if user_selected == A
		modify_existing_contact if user_selected == B
		delete_existing_contact if user_selected == C
		display_existing_contact if user_selected == D
		display_attributes if user_selected == E
		exit_program if user_selected == X
	end

end

a_crm_app = CRM.new
a_crm_app.main_menu
a_crm_app.call_option

class Contact
	def initialize(first_name, last_name, email, note)
		@first_name = first_name
		@last_name = last_name
		@email = email
		@note = note
	end

	def add_new_contact
		print "Enter the First Name:"
		first_name = gets.chomp
		print "Enter the Last Name:"
		last_name = gets.chomp
		print "Enter their Email Address:"
		email = gets.chomp
		print "Enter a note about this contact:"
		note = gets.chomp
		contact = Contact.new(first_name, last_name, email, note)
	end	
end
