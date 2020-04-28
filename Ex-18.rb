#this one is like ARGV
def print_two(*args)
	arg1, arg2 = args
	puts "arg1: #{arg1}, arg2: #{arg2}"
end

#Now do it better
def print_two_agin(arg1, arg2)
	puts "arg1: #{arg1}, arg2: #{arg2}"
end

#Solo arg
def print_one(arg1)
	puts "arg1: #{arg1}"
end

#No arg
def print_none()
	puts "I got nothin'"
end


print_two("Tate", "Ray")
print_two_agin("Tate", "Ray")
print_one("First!")
print_none()