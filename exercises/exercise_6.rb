require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Carly Rae", last_name: "Jepsen", hourly_rate: 100)
@store1.employees.create(first_name: "Connor", last_name: "Peebles", hourly_rate: 90)

@store2.employees.create(first_name: "Taylor", last_name: "Swift", hourly_rate: 101)
@store2.employees.create(first_name: "Lady", last_name: "Gaga", hourly_rate: 95)
@store2.employees.create(first_name: "Louis", last_name: "Levesque", hourly_rate: 90)

@store1_employees = Employee.where(store: 1)
@store1_employees.each { |e| puts "#{e.first_name} #{e.last_name}" }

@store2_employees = Employee.where(store: 2)
@store2_employees.each { |e| puts "#{e.first_name} #{e.last_name}" }
