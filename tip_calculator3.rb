

# get the deets from the user

puts "What was the cost of your meal --> "
meal_cost = gets.to_f

puts "Cool, what is your local tax rate --> "
tax_rate = gets.to_f

puts "Finally, what tip rate do you want to offer --> "
tip_rate = gets.to_f

def calculate_percentage_rate(amount, rate)
	return amount.to_f * rate/100
end


# calculate expenses

tax_value = calculate_percentage_rate(meal_cost, tax_rate)
meal_with_tax = tax_value.to_f + meal_cost
tip_value = calculate_percentage_rate(meal_with_tax, tip_rate)
total_cost = meal_with_tax + tip_value.to_f

puts " "
puts "-------------------------------------------------------"
puts " " 
print "The pre-tax cost of your meal was: $%.2f.\n" % meal_cost
print "At %d%%, tax for this meal is: $%.2f.\n" % [tax_rate, tax_value]
print "For a %d%% tip, you should leave $%.2f.\n" % [tip_rate, tip_value]
print "The grand total for this meal is then: $%.2f\n" % total_cost
puts " "
puts "--------------------------------------------------------"
puts " "