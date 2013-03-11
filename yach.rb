require './lib/player'
require './lib/die'
require './lib/turn'
require './lib/game'

puts "Welcome!\n\n"
players = [Player.new("First player"),Player.new("Second player")]
game = Game.new(players)

die = Die.new

until game.over?
  players.each do |player|
    puts "#{player.name}, your turn\n\n"
    turn=Turn.new()
    puts "You rolled a #{turn.mas} points"
    puts"You have #{turn.point}. It is #{turn.answer}"
    player.add(turn.point)
    puts "All you have #{player.points}"
    gets
  end
end

puts "Congratulations, #{game.winner.name}. You win! You have #{game.winner.points}!"



