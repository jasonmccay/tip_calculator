class Calculate

	def initialize(meal_cost, tax_rate, tip_rate)
		@meal_cost = meal_cost
		@tax_rate = tax_rate
		@tip_rate = tip_rate
	end

	def percentage_rate(amount, rate)
		return @meal_cost.to_f * @tax_rate/100
	end

	def ping
		puts "pong"
		puts @meal_cost
		puts @tax_rate
		puts @tip_rate
	end
end

calculator = Calculate.new(15.50, 4.5, 7.8)

calculator.ping