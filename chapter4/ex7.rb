puts "Input the first point:"
x_1,y_1 = gets.split(",")
puts "Input the second point:"
x_2,y_2 = gets.split(",")
x_1 = x_1.to_i
x_2 = x_2.to_i
y_1 = y_1.to_i
y_2 = y_2.to_i

statement = ""

if ((x_1 == x_2) and (y_1 == y_2))
 statement += "These points are the same!"
elsif (x_1 == x_2)
 statement += "This is a horizontal line"
elsif (y_1 == y_2)
 statement += "This is a vertical line"
else
 if ((x_1 < x_2) and (y_1 < y_2))
  statement += "the line has a positive slope"
 elsif ((x_1 > x_2) and (y_1 < y_2))
  statement += "the line has a negative slope"
 elsif ((x_1 < x_2) and (y_1 > y_2))
  statement += "the line has a negative slope"
 else
  statement += "the line has a positive slope"
 end
end

puts statement
  
