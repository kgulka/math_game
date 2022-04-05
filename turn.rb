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
  
  def initialize (player)
    @question = Question.new()
    @response = 0
    @question.question_text
    @player = player
  end
  
  def show_question()
    puts "---New Turn---"
    print "#{@player.name}: " 
    puts @question.question_text
  end

  def update_score(response)
    if !@question.is_response_correct(response.to_i)
      puts "#{@player.name}: Wrong answer!"
      @player.lose_a_life()
    else
      puts "#{@player.name}: Correct answer!"
    end
  end  
end
