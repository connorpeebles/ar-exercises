require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

total_income = Store.sum(:annual_revenue)
puts total_income

average_income = Store.average(:annual_revenue)
puts average_income

@high_revenue = Store.where("annual_revenue >= 1000000")
puts @high_revenue.size
