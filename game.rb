
# Game object 
# ----------
# attributes
# ----------
# -last_player_turn
# -player1 
# -player2

# methods
# -------
# -run_game
# -check_for_loser
# -display_winner
# --------------

#Use puts, raise some_val.inspect, and byebug to help with debugging

class Game
  PLAYER_LIVES = 3

  def initialize ()
    @player1 = Player.new("Player1", PLAYER_LIVES)
    @player2 = Player.new("Player2", PLAYER_LIVES)
    @players = [@player1, @player2]
    # @game_winner = @player1
  end

  def run_game
    next_player = 0
    loop do
      currentTurn = Turn.new(@players[next_player])

      currentTurn.show_question
      resp = gets.chomp 
      currentTurn.update_score(resp)
      puts "Score: #{@player1.player_score_text} vs #{@player2.player_score_text}"

      if !@player1.is_alive()
        @game_winner = @player2
        break
      end
      if !@player2.is_alive()
        @game_winner = @player1
        break
      end

      if next_player == 0
        next_player = 1
      else
        next_player = 0
      end
    end
    puts "*** Game Over ***"
    puts "The winner is #{@game_winner.name} with the score: #{@game_winner.player_score_text}."
  end
end
