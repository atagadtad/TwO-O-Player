require './player'
require './question'
require './score'

p1 = Player.new('Player 1')
p2 = Player.new('Player 2')

current_player = p1

while current_player.lives > 0 do
  question = Question.new(current_player.name)
  if question.printQuestion == true

    puts "P1: #{p1.lives}/3 vs P2: #{p2.lives}/3"
    if current_player == p1
      current_player = p2
    else
      current_player = p1
    end

  elsif

    current_player.lives -= 1
    puts "P1: #{p1.lives}/3 vs P2: #{p2.lives}/3"
    if current_player == p1
      current_player = p2
    else
      current_player = p1
    end

  end

  if current_player.lives == 0
    puts "---- GAME OVER ----"
    puts "#{p2.name} wins with a score of #{p2.lives}/3"
  end

end
