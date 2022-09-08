require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

=begin

Exercise 5: Calculations
Output the total revenue for the entire company (all stores), using Active Record's .sum calculation method.
On the next line, also output the average annual revenue for all stores.
Output the number of stores that are generating $1M or more in annual sales. Hint: Chain together where and size (or count) Active Record methods.

=end

total_revenue = Store.sum("annual_revenue")
puts "The total_revenue for the entire company is $#{total_revenue}"
total_stores = Store.count
average_revenue = total_revenue / total_stores
puts "The average_revenue of the entire company is $#{average_revenue}."

most_profit_stores = Store.where('annual_revenue >= 1000000')
number_of_million_dollar_stores = most_profit_stores.count
puts "There are a total of #{number_of_million_dollar_stores} that generate 1million or more in profit."
