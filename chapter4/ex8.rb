# Here is a program that solves a system of two linear equations.
#This solver cannot be finished because ruby does not handle floating point numbers well enough.  For instance 4.94 maybe treated as 4.93999999999995 as evidenced by running for i in (0..10).step(0.001) puts i end

puts "Input the first equation"
puts "Input the coefficient on y"
y_1 = gets.to_i
puts "Input the coefficient on x"
x_1 = gets.to_i
puts "Input the y intercept"
b_1 = gets.to_i

puts "Input the second equation"
puts "Input the coefficient on y"
y_2 = gets.to_i
puts "Input the coefficient on x"
x_2 = gets.to_i
puts "Input the y intercept"
b_2 = gets.to_i

tmp = 0
conn_one = false # if we can row reduce based on x's
conn_two = false
conn_three = false
conn_four = false
solved_condition = (((x_1 == 1 and x_2 == 0 ) and (y_1 == 0 and y_2 == 1)) or ((x_1 == 0 and x_2 == 1) and (y_1 == 1 and y_2 == 0)))

while !solved_condition do
 # R1 <- R1/c
 if ( x_1 % y_1 == 0 )
  y_1 = y_1 / y_1
  x_1 = x_1 / y_1
  b_1 = b_1 / y_1
 elsif ( y_1 % x_1 == 0)
  y_1 = y_1 / x_1
  x_1 = x_1 / x_1
  b_1 = b_1 / x_1
 end
 # R2 <- R2/c 
 if ( x_2 % y_2 == 0 )
  y_2 = y_2 / y_2
  x_2 = x_2 / y_2
  b_2 = b_2 / y_2
 elsif ( y_1 % x_1 == 0)
  y_2 = y_2 / x_2
  x_2 = x_2 / x_2
  b_2 = b_2 / x_2
 end
 # R2 <- R2 - cR1
 if ((x_1 != 0) or ( x_2 != 0))
 
 if ( x_1 < x_2 )
   for i in (0..x_2)
    if (x_1*i == x_2)
      conn_one = true
      tmp = i
      break
    end
   end
 end
 if ( x_2 < x_1 )
   for i in (0..x_1)
    if ( x_2 * i == x_1)
      conn_two = true
      tmp = i
      break
    end
   end
 end
 elsif (( y_1 != 0) or (y_2 != 0)) 
  if ( y_1 < y_2 )
   for i in (0..y_2)
    if (y_1*i == y_2)
      conn_three = true
      tmp = i
      break
    end
   end
 end
 if ( y_2 < y_1 )
   for i in (0..y_1)
    if ( y_2 * i == y_1)
      conn_four = true
      tmp = i
      break
    end
   end
 end
 end

 if (conn_one)
  x_2 = x_2 - x_1 * tmp
  y_2 = y_2 - y_1 * tmp
  b_2 = b_2 - b_1 * tmp
 elsif (conn_two)
  x_1 = x_1 - x_2 * tmp
  y_1 = y_1 - y_2 * tmp
  b_1 = b_1 - b_2 * tmp
 elsif (conn_three)
  x_2 = x_2 - x_1 * tmp
  y_2 = y_2 - y_1 * tmp
  b_2 = b_2 - b_1 * tmp
 elsif (conn_four)
  x_1 = x_1 - x_2 * tmp
  y_1 = y_1 - y_2 * tmp
  b_1 = b_1 - b_2 * tmp
 else
  puts "There is no solution"
  break
 end
end

puts "#{b_1} = x"
puts "#{b_2} = y" 


