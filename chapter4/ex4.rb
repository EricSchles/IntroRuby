puts "Enter the customer's age:"
age = gets.to_i

if (age <= 12)
	cost = 9
elsif (age >= 65)
	cost = 12
else
	cost = 18
end

puts "Ticket cost: " + cost.to_s
