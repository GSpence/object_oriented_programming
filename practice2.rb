class Contact

	attr_accessor :notes

	def initialize
		@notes = ""
	end
end

bob = Contact.new
bob.notes = "Spoke to Bob..."
puts bob.notes