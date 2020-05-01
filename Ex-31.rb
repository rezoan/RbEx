puts "You enter a dark room with two doors. Do you enter door #1 or door #2?"

print "> "
door = $stdin.gets.chomp

if door == "1"
	puts "There is a bear eating a cheesecake. What do you do?"
	puts "1. Take the cake."
	puts "2 Scream at the bear."

	print "> "
	bear = $stdin.gets.chomp

	if bear == "1"
		puts "The bear eats your face."
	elsif bear == "2"
		puts "The bear eats your legs off."
	else
		puts "Well, doing %s is probably better. Bear runs away." %bear
	end 
			
elsif door == "2"
	puts "You stare into the endless abyss of cthulu's retina."
	puts "1. Blueberries."
	puts "2. Yellow Jacket Clothespins."
	puts "3. Understanding revolvers singing melodies."

	print "> "
	insanity = $stdin.gets.chomp

	if insanity == "1" || insanity == "2"
		puts "Your body survives powered by a mind of jello. Good job."
	else
		puts "Your eyes turn to muck. That sucks."
	end
else
	puts "You stumble around in the dark and fall on a knife and die."
end
		