class Sales

	BOOK = 1
	FOOD = 2
	MEDICAL = 3
	IMPORT = 4

	def initialize(item, price, tax)
		@item = item
		@price = price
		@tax = tax
	end	

	def calculate
		if @item == 1 || 2 || 3
			@tax = 0
		elsif @item == 4
			@tax = (@price * 1.15)
		else 
			@tax == (@price * 1.10)
		end 
	end
end

grocery = Sales.new