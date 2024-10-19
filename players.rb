class Players
  attr_accessor :lives, :score, :current
  def initialize(current = false)
    @lives = 3
    @score = 0
    @current = current
  end
end