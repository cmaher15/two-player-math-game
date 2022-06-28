class Question 
  attr_accessor :number1, :number2, :answer, :ask_question, :check_answer

  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @answer = @number1 + @number2
  end 

  def ask_question(player)
  "#{player}: What does #{@number1} plus #{@number2} equal?"
  end

  def check_answer(input)
 if input.to_i == answer
  return true
  end  
end

end 
