class Contact

	@@counter = 1000
    
	attr_accessor :notes, :firstname, :lastname, :id, :email
    
	def initialize
		@id = Contact.get_id
		@firstname = firstname
		@lastname = lastname
		@email = email
		@notes = notes
	end
    
	def to_s
		"ID: #{@id}\nName: #{@firstname}, #{@lastname}\nEmail: #{@email}\nNotes: #{@notes}"
	end
    
	def self.get_id
    	@@counter += 1
    	@@counter
	end

end


