# requiring all project source code.
require './MessageReferences.rb'
require './players.rb'
require './QuestionLogic.rb'

# integration and running logic below:
class Game
  include MessageReferences
  include QuestionLogic
  attr_accessor :p1, :p2
  attr_reader :operators

  def initialize
  @operators = [
    "plus",
    "minus",
    "multipied_by",
    "divided_by",
  ]
    @p1 = Players.new(true)
    @p2 = Players.new
  end

  def runtime
    until @p1.lives == 0 || @p2.lives == 0
      num1 = self.num_value
      num2 = self.num_value
      operator = self.operator_value
      if (@p1.current)
        puts self.new_turn
        puts self.question("1", num1, operator, num2)
        answer = $stdin.gets.chomp.to_i
        if(answer == self.evaluate(operator, num1, num2))
          self.correct("1")
          @p1.score += 1
        else
          self.incorrect("1")
          @p1.lives -= 1
        end
        self.score(@p1, @p2)
        @p1.current = !@p1.current
        @p2.current = !@p2.current
      elsif (@p2.current)
        puts self.new_turn
        puts self.question("2", num1, operator, num2)
        answer = $stdin.gets.chomp.to_i
        if(answer == self.evaluate(operator, num1, num2))
          self.correct("2")
          @p2.score += 1
        else
          self.incorrect("2")
          @p2.lives -= 1
        end
        self.score(@p1, @p2)
        @p2.current = !@p2.current
        @p1.current = !@p1.current
      else
        puts "An unexpected ERROR occurred"
      end  
    end
  end
end
