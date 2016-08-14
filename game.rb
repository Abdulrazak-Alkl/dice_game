class Game

	def initialize(players, dice_number)
		@players = []
		@winners = []
		@rounds = 1
		players.each { |name| @players << Player.new(name, dice_number) }
	end

	#
	# start the Game
	#
	def play
		start_round while @winners.empty?
		show_winners
	end

	private

	#
  # all players roll their dices
	#
	def start_round
		show_round_number
		@rounds += 1

		puts "\nAfter dices rolled:\n"

		@players.each { |player|
				player.roll_dices
				player.show_dices
		}

		puts "\nAfter dice moved/removed:\n"

		game_rule
	end

	#
	# apply game rules to find a winner
	#
	def game_rule
		CircularList.new(@players).each do |player, next_player|
			player.cup.delete_if do |dice|
				next_player.moved << dice if dice.move?
				dice.remove?
			end
		end
		@players.each do |player|
			player.move
			player.show_dices
			@winners << player if player.win?
		end
	end

	#
	# print winners names
	#
	def show_winners
			@winners.each_with_index { |winner,i| puts "\nwinner number #{i+1}: #{winner.name}"}
	end

	#
	# print round number
	#
	def show_round_number
			puts "\nRound #{@rounds}\n"
	end
end
