# Question object
# -------------
# attributes
# ----------
# -question
# -correct_answer_value

# methods
# -------
# -private question_generate_random
# -check_response

class Question
  attr_reader :question
  attr_reader :current_lives

  def initialize ()
    @num1 = rand(1...20)
    @num2 = rand(1...20)
  end
  
  def question_text 
    "What does #{@num1} plus #{@num2} equal?"
  end  

  def is_response_correct (response_value) 
    (@num1 + @num2) == response_value
  end  

end

q1 = Question.new()

puts q1.question_text
ans = q1.is_response_correct(5)

puts "the answer is correct true or false: #{ans}"