
class Question
  attr_accessor :player

  def initialize(player)
    @player = player
  end

  def printQuestion
    num1 = rand(1..20)
    num2 = rand(1..20)
    total = num1 + num2
    puts "#{@player}: What does #{num1} + #{num2} equal?"
    puts total

    print "> "
    answer = $stdin.gets.to_i
    if answer == total
      puts "#{@player}: Awesome, you got it right!"
      true
    elsif
      puts "#{@player}: Geez... Nope."
      false
    end

  end

end