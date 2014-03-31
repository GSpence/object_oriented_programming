class Rolodex

	def initialize
		@contacts = []
	end

	def add(firstname, lastname, email, notes)
		contact = Contact.new
		contact.firstname = firstname
		contact.lastname = lastname
		contact.email = email
		contact.notes = notes
		@contacts << contact
	end

	def show_contacts
		@contacts.each do |contact| 
			puts contact.to_s
		end
	end

	def display_contact(id)
		@contacts.each do |contact|
			if contact.id == id	
				puts contact.firstname
				puts contact.lastname
				puts contact.email
				puts contact.notes
			end
		end
	end

	def remove_contact_id(id)
		@contacts.delete_if {|c| c.id == id }
	end	

	def remove_contact_firstname(firstname)
		@contacts.delete_if {|c| c.firstname == firstname}
	end	

	def remove_contact_lastname(lastname)
		@contacts.delete_if {|c| c.firstname == lastname}
	end	

	def remove_contact_email(email)
		@contacts.delete_if {|c| c.firstname == email}
	end	



	def edit_contact_lastname(id, new_lastname)
		@contacts.each do |contact|
			if contact.id == id
				contact.lastname = new_lastname				
			end
		end
	end

	def edit_contact_firstname(id, new_firstname)
		@contacts.each do |contact|
			if contact.id == id
				contact.firstname = new_firstname			
			end
		end
	end

	def edit_contact_email(id, new_email)
		@contacts.each do |contact|
			if contact.id == id
				contact.email = new_email			
			end
		end
	end

	def edit_contact_notes(id, new_notes)
		@contacts.each do |contact|
			if contact.id == id
				contact.notes = new_notes		
			end
		end
	end

	def show_attribute(info)
		@contacts.each do |contact|
			if info == firstname
				puts contact.firstname
			elsif info == lastname
				puts contact.lastname
			elsif info == email
				puts contact.email
			elsif info == notes
				puts contact.notes
			else
				puts "Invalid"
				main_menu
			end
		end
	end

end
