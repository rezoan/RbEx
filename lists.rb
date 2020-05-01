puts "enter a number."
a = gets.chomp

numbers = []

(0...10).each do |i|
	puts "#{i} added to the list"
	numbers << i 
end

numbers.each {|i| puts "Number Was: #{i}"}