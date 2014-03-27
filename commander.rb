require './rover'

# 5 5
# 1 2 N
# LMLMLMLMM

class Commander

	def create_rover(starting_point)
		coords = starting_point.split(" ")
		@rover = Rover.new(coords[0], coords[1], coords[2])
	end

	def move_rover(move_command)
		move_command.split("").each do |c|
			if c == "L"
				@rover.turn_left
			elsif c == "R"
				@rover.turn_right
			elsif c == "M"
				@rover.move
			end	
	end
end

command = Commander.new
command.create_rover(1, 2, N)