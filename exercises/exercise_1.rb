require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
=begin

Exercise 1: Create 3 stores
Use Active Record's create class method multiple times to create 3 stores in the database:
Burnaby (annual_revenue of 300000, carries men's and women's apparel)
Richmond (annual_revenue of 1260000 carries women's apparel only)
Gastown (annual_revenue of 190000 carries men's apparel only)
Output (puts) the number of the stores using ActiveRecord's count method, to ensure that there are three stores in the database.


=end

store = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)

store = Store.create(name: "Richmond" , annual_revenue: 1260000 , mens_apparel: false, womens_apparel: true)

store = Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

puts "The number of stores in the ActiveRecord is #{Store.count}."