class Game
  if (player1 == "rock" && player2 == "rock") || (player1 == "paper" && player2 == "paper")
    puts "It's a draw"
  elsif (player1 == "scissors" && player2 == "scissors")
    puts "It's a draw"
  elsif (player1 == "paper" && player2 == "rock") || (player1 == "rock" && player2 == "scissors")
    puts "Player 1 wins"
  elsif (player1 == "scissors" && player2 == "paper")
    puts "Player 1 wins"
  elsif (player1 == "paper" && player2 == "scissors") || (player1 == "rock" && player2 == "paper")
    puts "Player 2 wins"
  elsif (player1 == "scissors" && player2 == "rock")
    puts "Player 2 wins"
  end
end
