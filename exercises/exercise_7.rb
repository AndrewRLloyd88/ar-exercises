require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Enter a store name:"

#2. Ask the user for a store name (store it in a variable)
@storeName = gets.chomp
# Attempt to create a store with the inputted name but leave out the other fields (annual_revenue, mens_apparel, and womens_apparel)
#Will throw our errors
# new_store = Store.new(name: @storeName)

#Will Validate OK
new_store = Store.new(name: @storeName, annual_revenue: 500000, mens_apparel: true, womens_apparel: false)

new_store.save
#4. Display the error messages provided back from ActiveRecord to the user (one on each line) after you attempt to save/create the record
new_store.errors.messages.each do |message|
  puts message
end