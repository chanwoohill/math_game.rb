class Question
  attr_reader :solution

  def initialize
    @num1 = rand(21)
    @num2 = rand(21)
    @operator = [:+, :-, :*].sample
    @solution = @num1.send(@operator, @num2)
  end

  def get_question
    "What is #{@num1} #{@operator} #{@num2} ?"
  end

  def correct?(answer)
    answer.to_i == @solution
  end

end

