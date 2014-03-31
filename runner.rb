require './rolodex'
require './contact'

class Runner
	def initialize
		@rolodex = Rolodex.new
	end


	def main_menu
		puts "Please Select One Option (Enter #)"
		puts " "
		puts "1. Add a Contact"
		puts "2. Display All"
		puts "3. Delete Contact"
		puts "4. Modify Contact"
		puts "5. Display Contact"
		puts "6. Show By Attribute"
		puts "0. To Exit"
	end


	def run
		done = false
    	while !done
        main_menu
        	input = gets.chomp.to_i
        	if input == 0
            	done = true
			elsif input == 1
            	add_contact
			elsif input == 2
            	show_contacts
			elsif input ==3
            	remove_contact
			elsif input == 4
            	edit_contact
			elsif input == 5
            	display_contact
        	elsif input == 6
        		show_attribute
        	end
        end
    end

    def add_contact
    	puts "Enter First Name"
    	firstname = gets.chomp
    	puts "Enter Last Name"
    	lastname = gets.chomp
    	puts "Enter Email Address"
    	email = gets.chomp
    	puts "Enter Notes"
    	notes = gets.chomp
    	@rolodex.add(firstname, lastname, email, notes)
    	main_menu
	end

	def show_contacts
		@rolodex.show_contacts
		puts "------------"
	end

	def remove_contact
    puts "Please enter one of the following attributes:"
    puts " "
    puts "ID\nFirst Name\nLast Name\nEmail"
    info = gets.chomp.to_s
    	if
        info == "First Name"
        puts "Enter Contact's First Name:"
        new_firstname = gets.chomp
        @rolodex.remove_contact_firstname
        elsif
        info == "ID"
        puts "Enter Contact's ID number:"
        new_id = gets.chomp
        @rolodex.remove_contact_id
        elsif
        info == "Last Name"
        puts "Enter Contact's Last Name:"
        new_lastname = gets.chomp
        @rolodex.remove_contact_lastname
        elsif
        info == "Email"
        puts "Enter Contact Email:"
        new_email = gets.chomp
        @rolodex.remove_contact_email
        else
        puts "Invalid - Please Resubmit"
        end
    end

    def edit_contact
    puts "Enter ID of Customer to Edit"
    id = gets.chomp.to_i
    puts "Please Select Info To Edit"
    puts "First Name\nLast Name\nEmail\nNotes"
    info = gets.chomp.to_s
    	if
        info == "First Name"
        puts "Enter new first name"
        new_firstname = gets.chomp
        @rolodex.edit_contact_firstname(id, new_firstname)
        
        elsif
        info == "Last Name"
        puts "Enter new Last Name"
        new_lastname = gets.chomp
        @rolodex.edit_contact_lastname(id, new_lastname)
        elsif
        info == "Email"
        puts "Enter new email"
        new_email = gets.chomp
        @rolodex.edit_contact_email(id, new_email)
        elsif
        info == "Notes"
        puts "Enter new Notes"
        new_notes = gets.chomp
        @rolodex.edit_contact_notes(id, new_notes)
        else
        puts "Invalid - Please Resubmit"
        main_menu
    	end
    end

    def display_contact
   	puts "Enter Contact ID"
    id = gets.chomp.to_i
    @rolodex.display_contact(id)
	end

	def show_attribute
		puts "Enter Attribute"
		info = gets.chomp.to_s
		@rolodex.show_attribute(info)
	end

end



runner = Runner.new
runner.run
