require 'pry'

#generate variables for player health
@player_one_health = 3
@player_two_health = 3

#generate the question

def the_question
	number_one = rand(20) + 1
	number_two = rand(20) + 1
	@answer = number_one + number_two
	"What do you get when you add #{number_one} and #{number_two}?"
end

def the_answer(user_input)
	if @answer == user_input
		puts "Right!"
	else
		puts "Wrong!"
		@right_answer = false
	end
end

def player_one_turn
	puts "Hello Player 1!"
	puts the_question
	user_input = gets.chomp.to_i
	the_answer(user_input)
	if @right_answer == false
		@player_one_health -= 1
	end
end

def player_two_turn
	puts "Hello Player 2!"
	puts the_question
	user_input = gets.chomp.to_i
	the_answer(user_input)
	if @right_answer == false
		@player_two_health -= 1
	end
	# binding.pry
end

while (@player_one_health > 0) && (@player_two_health > 0)
	@right_answer = true
	player_one_turn
	player_two_turn
end

puts "Thanks for playing!"