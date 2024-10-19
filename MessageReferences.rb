module MessageReferences
  def new_turn
    puts " --- NEW TURN ---"
  end
  
  def game_over
    puts " --- GAME OVER ---"
  end

  def good_bye
    puts "Good bye!"
  end

  def score(player_object_1, player_object_2)
    losses_p1 = 3 - player_object_1.lives
    losses_p2 = 3 - player_object_2.lives
    total_p1 = player_object_1.score + losses_p1
    total_p2 = player_object_2.score + losses_p2
    puts "P1: #{player_object_1.score}/#{total_p1} vs P2: #{player_object_2.score}/#{total_p2}"
  end

  def incorrect(player)
      puts "Player #{player}: Seriously? No!"
  end

  def correct(player)
    puts "Player #{player}: Yes! you are correct."
  end

  def question(player, ref_num1, reference_operator, ref_num2)
    puts "Player #{player}: What does #{ref_num1} #{reference_operator} #{ref_num2} equal?"
  end

end