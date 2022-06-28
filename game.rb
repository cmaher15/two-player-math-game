class Game
  def initialize
    @player_1 = Player.new("Player 1")
    @player_2 = Player.new("Player 2")
  end

  def player_lives
    if @player_1.lives == 0 or @player_2.lives == 0
      if @player_1.lives == 0
        puts "#{@player_2.name} wins with a score of #{@player_2.lives}/3"
        puts '----- GAME OVER ------'
        puts "Good Game! BYYYEEEEEEE"
        return 1
      else
        puts "#{@player_1.name} wins with a score of #{@player_1.lives}/3"
        puts '----- GAME OVER ------'
        puts "Good Game! BYYYEEEEEEE"
        return 1
      end
    end

    puts "#{@player_1.name} has (#{@player_1.lives}/3) #{@player_1.lives > 1 ? 'lives' : 'life'} and #{@player_2.name} has (#{@player_2.lives}/3) #{@player_2.lives > 1 ? 'lives' : 'life'}"
    puts '--- NEW TURN ---'

  end

  def game_loop
    puts "Welcome #{@player_1.name} and #{@player_2.name}! Let's get down to business 🎉"

    @gameplay = true 

    player_turn = 1
    while @gameplay do
    current_player = player_turn == 1 ? @player_1 : @player_2
    question = Question.new
    puts question.ask_question(current_player.name)
    print '> '
    player_answer = $stdin.gets.chomp.to_i
    answer = question.check_answer(player_answer)
    if answer
      puts "WOOHOO! Good job, smarty pants!"
    else puts "Are you SERIOUS? Nooo way."
    current_player.lost_life
    end


    if player_turn == 1
      player_turn = 2
    else player_turn = 1
    end


  if player_lives == 1
    @gameplay = false;
    
  end
end
end
end




