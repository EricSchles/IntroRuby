puts "Enter winter temperature"
temp_winter = gets
puts "Enter spring temperature"
temp_spring = gets
puts "Enter summer temperature"
temp_summer = gets
puts "Enter fall temperature"
temp_fall = gets
ave_temp = (temp_winter.to_i + temp_spring.to_i + temp_summer.to_i + temp_fall.to_i)/4
puts "The average temperature is #{ave_temp}"
