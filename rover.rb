class rover

	def initialize(x, y, direction)
		@x = x
		@y = y
		@direction = direction
	end	

	def move
		if @direction == "N"
			@y += 1
		elsif @direction == "E"
			@x += 1
		elsif @direction == "S"
			@y -= 1
		elsif @direction == "W"
			@x -= 1		
		end
	end

	def to_s
		"#{@x}, #{@y}, #{@direction}"
	end

	def right
		if @direction == "N"
			@direction = "E"
		elsif @direction == "E"
			@direction = "S"
		elsif @direction == "S"
			@direction = "W"
		elsif @direction == "W"
			@direction = "N"
	end

	def left
		if @direction == "N"
			@direction = "W"
		elsif @direction == "W"
			@direction = "S"
		elsif @direction == "S"
			@direction = "E" 
		elsif @direction == "E"
			@direction = "N"	
	end
end

