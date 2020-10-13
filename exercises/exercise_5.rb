require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
#1. Output the total revenue for the entire company (all stores), using Active Record's `.sum` calculation method.
puts Store.sum(:annual_revenue)

# D, [2020-10-12T20:00:16.483787 #597987] DEBUG -- :    (0.3ms)  SELECT SUM("stores"."annual_revenue") FROM "stores"
# 6130000


#2. On the next line, also output the average annual revenue for all stores.
puts Store.average(:annual_revenue)
# D, [2020-10-12T20:00:16.484752 #597987] DEBUG -- :    (0.3ms)  SELECT AVG("stores"."annual_revenue") FROM "stores"
# 1226000.0


#3. Output the number of stores that are generating $1M or more in annual sales. **Hint:** Chain together `where` and `size` (or `count`) Active Record methods.
puts Store.where("annual_revenue > 1000000").count
# D, [2020-10-12T20:00:16.485632 #597987] DEBUG -- :    (0.3ms)  SELECT COUNT(*) FROM "stores" WHERE (annual_revenue > 1000000)
# 3