class Dice

  attr_reader :number

  def roll
    @number = rand(6) + 1
  end

  def move?
    @number == 1
  end

  def remove?
    @number == 6 || @number == 1
  end

  def show
    print "#{@number}, "
  end

end
