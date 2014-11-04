
class Calculate

	def initialize(meal_cost, tax_rate, tip_rate)
		@meal_cost = meal_cost
		@tax_rate = tax_rate
		@tip_rate = tip_rate
	end

	def calculate_percentage_rate(amount, rate)
		return amount.to_f * rate/100
	end

	def tax_amount
		calculate_percentage_rate(@meal_cost, @tax_rate)
	end

	def meal_with_tax
		tax_amount + @meal_cost
	end

	def tip_amount
		calculate_percentage_rate(@meal_cost, @tip_rate)
	end

	def total_cost
		meal_with_tax + tip_amount
	end

	def print_receipt
		
		puts " "
		puts "-------------------------------------------------------"
		puts " " 
		print "The pre-tax cost of your meal was: $%.2f.\n" % @meal_cost
		print "At %d%%, tax for this meal is: $%.2f.\n" % [@tax_rate, tax_amount]
		print "For a %d%% tip, you should leave $%.2f.\n" % [@tip_rate, tip_amount]
		print "The grand total for this meal is then: $%.2f\n" % total_cost
		puts " "
		puts "--------------------------------------------------------"
		puts " "

	end

	def ping
		puts "pong"
		puts @meal_cost
		puts @tax_rate
		puts @tip_rate
	end
end	


# get the deets from the user

puts "What was the cost of your meal --> "
meal_cost = gets.to_f

puts "Cool, what is your local tax rate --> "
tax_rate = gets.to_f

puts "Finally, what tip rate do you want to offer --> "
tip_rate = gets.to_f


tip_calculator = Calculate.new(meal_cost, tax_rate, tip_rate)
tip_calculator.print_receipt
