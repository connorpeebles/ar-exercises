require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Alana", last_name: "Peebles", hourly_rate: 90)

@store1_employees = Employee.where(store: 1)
@store1_employees.each { |e| puts "#{e.first_name}'s Password: #{e.password}" }
