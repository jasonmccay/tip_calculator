
# hard coded variables

meal = 120
tax = 9
tip = 17


# calculate expenses

tax_value = meal.to_f * tax/100
meal_with_tax = tax_value.to_f + meal
tip_value = meal_with_tax * tip / 100
total_cost = meal_with_tax + tip_value.to_f

puts " "
puts "-------------------------------------------------------"
puts " " 
print "The pre-tax cost of your meal was: $%.2f.\n" % meal
print "At %d%%, tax for this meal is: $%.2f.\n" % [tax, tax_value]
print "For a %d%% tip, you should leave $%.2f.\n" % [tip, tip_value]
print "The grand total for this meal is then: $%.2f\n" % total_cost
puts " "
puts "--------------------------------------------------------"
puts " "