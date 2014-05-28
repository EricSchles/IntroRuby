puts "Enter winter temperature"
temp_winter = gets.to_i
puts "Enter spring temperature"
temp_spring = gets.to_i
puts "Enter summer temperature"
temp_summer = gets.to_i
puts "Enter fall temperature"
temp_fall = gets.to_i
ave_temp = (temp_winter + temp_spring + temp_summer + temp_fall)/4
puts "The average temperature is #{ave_temp}"
