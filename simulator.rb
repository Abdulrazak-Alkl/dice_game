require_relative 'game'
require_relative 'dice'
require_relative 'player'
require_relative 'circular_list'

def input_is_valid
	validate_arg_0 && validate_arg_1
end

def validate_arg_0
	return false if ARGV[0].nil?
	return false unless ARGV[0].to_i.is_a? Integer
	return false unless ARGV[0].to_i > 1
	return true
end

def validate_arg_1
	return false if ARGV[1].nil?
	return false unless ARGV[1].split(' ').length > 1
	return true
end

puts 'Input not defined correctly'; exit unless input_is_valid

dices_number=ARGV[0].to_i
players = ARGV[1].split(' ')

# Start the Game
Game.new(players, dices_number).play