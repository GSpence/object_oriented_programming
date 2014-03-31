require './rover'

# 5 5
# 1 2 N
# LMLMLMLMM

class Commander
	X = 0
	Y = 1
	DIRECTION = 2

	def create_rover(starting_point)
		coords = starting_point.split(" ")
		@rover = Rover.new(coords[X], coords[Y], coords[Z])
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
command.create_rover("1, 2, N")