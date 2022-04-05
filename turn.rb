# Turn object
# -------------
# attributes
# ----------
# -question
# -response
# -player

# methods
# -------
# -update score method.
# -check validation response
# -------------


class Turn
  #attr_reader :question
  
  def initialize (player)
    @question = Question.new()
    @response = 0
    @question.question_text
  end
  
  def show_question()
    puts @question.question_text
  end

  def update_score(response)
    if !@question.is_response_correct(response)
      player.lose_a_life()
    end
  end  
end

# q1 = question.new()

# puts q1.question_text
# ans = q1.is_response_correct(5)

# puts "the answer is correct true or false: #{ans}"