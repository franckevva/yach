class Game
  def initialize players
    @players=players
    @n=0
    @over=false
  end

  def over?
    if @n>=13
      @over=true
    else
      @n+=1
    end
    @over
  end
  def winner
    @players.max_by {|player| player.points}
  end
end