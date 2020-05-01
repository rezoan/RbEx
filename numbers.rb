puts "Enter x number."
x = gets.chomp.to_i
puts "Enter y number."
y = gets.chomp.to_i
puts "Enter the z number."
z = gets.chomp.to_i 

def squares(x, y, z)
	puts "Squaring #{x}"
	square_x = x * x
	puts "Squaring #{y}"
	square_y = y * y
	puts "squaring #{z}"
	square_z = z * z
	puts "The sqares of #{x}, #{y}, #{z} are\n#{square_x}\n#{square_y}\n#{square_z}\n"
end

def cubes(x, y, z)
	puts "Cubing #{x}"
	cube_x = x * x * x
	puts "Cubing #{y}"
	cube_y = y * y * y
	puts "cubing #{z}"
	cube_z = z * z * z
	puts "The cubes of #{x}, #{y}, #{z} are\n#{cube_x}\n#{cube_y}\n#{cube_z}\n"
end

def average(x, y, z)
	puts "finding the average of #{x}, #{y}, and #{z}"
	avr_xyz = (x + y + z)/3
	puts "The average of #{x}, #{y}, #{z} is #{avr_xyz}"
end

def large(x, y, z)
	puts "Lets find the largest number."
	if x > y && x > z
		puts "x is the largest."
	elsif y > x && y > z
		puts "y is the largest."
	elsif z > y && z > x
		puts "z is the largest"
	end
end

def small(x, y, z)
	puts "lets find the smallest number"
	if x < y && x < z
		puts "x is the smallest number"
	elsif y < x && y < z
		puts "y is the smallest"
	elsif z < x && z < y
		puts "z is the smallest"
	end
end

puts "#{squares(x, y, z)}"
puts "#{cubes(x, y, z)}"
puts "#{average(x, y, z)}"
puts "#{large(x, y, z)}"
puts "#{small(x, y, z)}"
