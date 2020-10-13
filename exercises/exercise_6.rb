require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
#3. Add some data into employees. Here's an example of one (note how it differs from how you create stores): `@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)`
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

@store1.employees.create(first_name: "Michael", last_name: "King", hourly_rate: 50)

@store1.employees.create(first_name: "Zach", last_name: "Effron", hourly_rate: 49)

@store1.employees.create(first_name: "John", last_name: "Stamos", hourly_rate: 48)

@store1.employees.create(first_name: "Kimmy", last_name: "Gibbler", hourly_rate: 53)

@store2.employees.create(first_name: "Richard", last_name: "Whittington", hourly_rate: 50)

@store2.employees.create(first_name: "Joe", last_name: "Bloggs", hourly_rate: 55)

@store2.employees.create(first_name: "Jane", last_name: "Doe", hourly_rate: 55)

@store2.employees.create(first_name: "Vitaly", last_name: "Petrov", hourly_rate: 54)

@store2.employees.create(first_name: "Ben", last_name: "Burtt", hourly_rate: 54)

@store2.employees.create(first_name: "Hildagard", last_name: "Westerkamp", hourly_rate: 58)