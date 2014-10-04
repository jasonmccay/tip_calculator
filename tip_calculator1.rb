
# hard coded variables

meal = 120
tax = 9
tip = 17


# calculate expenses

tax_value = meal * (tax / 100)
meal_with_tax = tax_value.to_f + meal
tip_value = meal_with_tax * (tip / 100)
total_cost = meal_with_tax + tip_value.to_f

print "The pre-tax cost of your meal was: $#{meal}."
print "At #{tax}%, tax for this meal is: $#{tax_value}."
print "For a #{tip}% tip, you should leave $#{tip_value}."
print "The grand total for this meal is then: $#{total_cost}."
