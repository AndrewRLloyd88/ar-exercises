require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
# 1. Borrowing and modifying the code from Exercise one, create 3 more stores:
# * Surrey (annual_revenue of 224000, carries women's apparel only)
# * Whistler (annual_revenue of 1900000 carries men's apparel only)
# * Yaletown (annual_revenue of 430000 carries men's and women's apparel)
Store.create(name: 'Surrey', annual_revenue: 2240000, mens_apparel: false, womens_apparel: true)
Store.create(name: 'Whistler', annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: 'Yaletown', annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

#2. Using the `where` class method from Active Record, fetch (a collection of) only those stores that carry men's apparel. Assign the results to a variable `@mens_stores`.
@mens_stores = Store.where(mens_apparel: true)
@womens_stores = Store.where(womens_apparel: true)
@low_sales_women = @womens_stores.where("annual_revenue < 1000000")

# 3. Loop through each of these stores and output their name and annual revenue on each line.
@mens_stores.each do |sales|
  puts "Store: #{sales.name} | #{sales.annual_revenue}"
end

#D, [2020-10-12T19:53:55.209643 #597529] DEBUG -- :   Store Load (0.1ms)  SELECT "stores".* FROM "stores" WHERE "stores"."mens_apparel" = $1  [["mens_apparel", "t"]]
# Store: Pitt Meadows | 300000
# Store: Whistler | 1900000
# Store: Yaletown | 430000

#4. Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.
@low_sales_women.each do |sales|
  puts "Store: #{sales.name} | #{sales.annual_revenue}"
end

#D, [2020-10-12T19:53:55.211857 #597529] DEBUG -- :   Store Load (0.2ms)  SELECT "stores".* FROM "stores" WHERE "stores"."womens_apparel" = $1 AND (annual_revenue < 1000000)  [["womens_apparel", "t"]]
# Store: Pitt Meadows | 300000
# Store: Yaletown | 430000