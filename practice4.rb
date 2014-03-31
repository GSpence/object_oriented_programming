require './rolodex'
require './contact'

class Runner
	def initialize
		@rolodex = Rolodex.new
	end


	def main_menu
		puts "Amazing CRM"
		puts "1. Add a Contact"
		puts "2. See all contacts"
		puts "3. Remove Contact"
		puts "4. Edit a Contact"
		puts "0. To Exit"
	end

	def add_contact
		puts "Enter First Name"
		firstname = gets.chomp
		puts "Enter Last Name"
		lastname = gets.chomp
		@rolodex.create_contact(firstname, lastname)
	end

	def show_contacts
		puts "All Contacts"
		@rolodex.show_contacts
		puts "-------------"
	end

	def remove_contact
		puts "Enter Customer ID to Remove"
		id = gets.chomp.to_i
		@rolodex.remove_contact
	end

	def edit_contact
		puts "Enter Contact ID to Edit"
		id = gets.chomp.to_i
		puts "Enter new name"
		new_name = gets.chomp
		@rolodex.edit_contact(id, new_name)
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
			end
		end
	end
end

runner = Runner.new
runner.run


