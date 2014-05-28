puts "Enter the customer's age:"
age = gets.to_i

if (age < 12)
	cost = 9
else
	cost = 18
end

puts "Ticket cost: " + cost.to_s
