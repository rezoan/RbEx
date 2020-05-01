def gold_room
	puts "This room is full of gold. How much do you take."

	print "> "
	choice = $stdin.gets.chomp

	#Ask pops about this dumb shit.
	if choice.include?("0") || choice.include?("1")
		how_much = choice.to_i
	else
		dead("Man, learn to type a number.")
	end

	if how_much < 50
		puts "Good Job you win."
		exit(0)
	else
		dead("dead")
	end
end

def bear_room
	puts %q{
		There is a bear here.
		The bear has a bunch of honey.
		The bear is in front of a door.
		How are you going to move the bear?
	}
	bear_moved = false

	while true
		print "> "
		choice = $stdin.gets.chomp

		if choice == "take honey"
			dead("dead")
		elsif choice == "taunt bear" && !bear_moved
			puts "The bear has moved. The path to the doo is clear, but it is still closed."
			bear_moved = true
		elsif choice == "taunt bear" && bear_moved
			dead("dead")
		elsif choice == "Open door" && bear_moved
			gold_room
		else
			puts "I got no idea what that means"
		end
	end
end

def cthulu_room
	puts %q{
		Here you see the great Cthulu.
		He, it, uhm, whatever, stares at you and you go insane.
		Do you flee for your life or eat your head?
	}

	print "> "
	choice = $stdin.gets.chomp

	if choice.include? "flee"
		start
	elsif choice.include? "head"
		dead("dead")
	else
		cthulu_room
	end
end

def dead(why)
	puts why, "Good Job!"
	exit(0)
end

def start
	puts %q{
		You are in a dark room.
		There is a door to your right and left.
		which one do you take?
	}

	print "> "
	choice = $stdin.gets.chomp

	if choice == "left"
		bear_room
	elsif choice == "right"
		cthulu_room
	else
		dead("dead")
	end
end

start
			
