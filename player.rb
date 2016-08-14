class Player

  attr_reader :cup, :moved, :name

  def initialize(name, dice_number)
    @name = name
    @cup = []
    @moved = []
    (1..dice_number).each { @cup << Dice.new }
  end

  #
  # roll all dices in a cup
  #
  def roll_dices
    @cup.each { |dice| dice.roll }
  end

  #
  # player is a winner if he has an empty cup
  #
  def win?
    @cup.empty?
  end

  #
  # move other player dices to cup
  #
  def move
    @cup = @cup + @moved
    @moved = []
  end

  #
  # print all dices in a cup
  #
  def show_dices
    print "Player #{@name}: "
    @cup.each { |dice| dice.show }
    puts "\n"
  end

end
