
class Game

	def initialize(start)
		@quips = [
			"Fail 1",
			"Fail 2",
			"Fail 3"
		]
		@start = start
	end

	def prompt()
		print "> "
	end

	def play()
		next_room = @start

		while true
			puts "\n--------"
			room = method(next_room)
			next_room = room.call()
		end
	end

	def death()
		puts @quips[rand(@quips.length())]
		Process.exit(1)
	end

	def central_corridor()
		puts "Choose 1, 2, or 3."


		prompt()
		action = gets.chomp()

		if action == "1"
			puts "Choice 1 PH"
			return :death
		elsif action == "2"
			puts "Choice 2 PH"
			return :death

		elsif  action == "3"
			puts "Choice 3 PH"
			return :laser_weapon_armory

		else
			puts "Invalid Choice"
			return :central_corridor
		end
	end

	def laser_weapon_armory()
		puts "Laser Weapon Armory"
		code = "%s%s%s" % [rand(9)+1, rand(9)+1, rand(9)+1]
		puts "#{code}"

		print "[keypad> "
		guess = gets.chomp()
		guesses = 0

		while guess != code and guesses < 10
			puts "BZZZZEDDD!"
			guesses +=1
			print "[keypad]> "
			guess = gets.chomp()
		end

		if guess == code
			puts "Code Accepted"
			return :the_bridge
		else
			puts "Failed."
			return :death
		end
	end

	def the_bridge()
		puts "The Bridge"
		puts "Choose 1 or 2."

		prompt()
		action = gets.chomp()

		if action == "1"
			puts "1 PH"
			return :death

		elsif action == "2"
			puts "2 PH"
			return :escape_pod
		else
			puts "Invalid Choice"
			return :the_bridge
		end
	end

	def escape_pod()
		puts "Escape Pod"


		good_pod = rand(5)+1
		print "[pod #]>"
		guess = gets.chomp()

		if guess.to_i != good_pod
			puts "Fail."
			return :death
		else
			puts "Success."
			Process.exit(0)
		end
	end
end

a_game = Game.new(:central_corridor)
a_game.play()
