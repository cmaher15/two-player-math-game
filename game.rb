class Game
  def initialize
    @player_1 = Player.new("Player 1")
    @player_2 = Player.new("Player 2")
  end

  def start_game 
    puts "Welcome #{player_1} and #{player_2}! Let's get down to business 🎉"
    game_loop
  end

  # def player_lives
  #   if @player_1.lives == 0 or @player_2.lives == 0
  #     if @player_1.lives == 0
  #       puts "#{@player_2.name} wins with a score of #{@player_2.lives}/3"
  #       puts '----- GAME OVER ------'
  #       return 1
  #     else
  #       puts "#{@player_1.name} wins with a score of #{@player_1.lives}/3"
  #       puts '----- GAME OVER ------'
  #       return 1
  #     end
  #   end

  #   puts "#{@player_1.name} has (#{@player_1.lives}) #{@player_1.lives > 1 ? 'lives' : 'life'} and #{@player_2.name} has (#{@player_2.lives}) #{@player_2.lives > 1 ? 'lives' : 'life'}"

  # end

  def game_loop
    player_turn = 1
    current_player = @player_turn == 1 ? @player_1 : @player_2
    question = Question.new
    question.ask_question(current_player)
    print '> '
    @player_answer = $stdin.gets.chomp.to_i
  end

end



