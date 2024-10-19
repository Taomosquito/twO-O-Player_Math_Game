module QuestionLogic
  def num_value
    rand(99) + 1
  end

  def operator_value
    @operators[rand(4)]
  end
  
  private

    def add(a, b)
      a + b
    end

    def subtract(a, b)
      a - b
    end

    def multiply(a, b)
      a * b
    end

    def divide(a, b)
      a / b
    end

  public

    def evaluate(operator, a, b)
      case operator
      when "plus"
        add(a, b)
      when "minus"
        subtract(a, b)
      when "multipied_by"
        multiply(a, b)
      when "divided_by"
        divide(a, b)
      else
        raise "Unknown operator: #{operator}"
      end
    end


end