class Turn
  attr_reader :mas, :point
  def initialize
    die=Die.new()
    @mas = [die.roll!,die.roll!,die.roll!,die.roll!,die.roll!]
    @point=0
    points
  end
  def points
    @mas.sort!
    @point=40 if(@mas==[1,2,3,4,5]||@mas==[2,3,4,5,6])
    @point=25 if(((@mas[0]==@mas[2])&&(@mas[3]==@mas[4]))||((@mas[0]==@mas[1])&&(@mas[2]==@mas[4])))
    @mas.each{|a| @point+=a} if(@mas[0]==@mas[3]||@mas[1]==@mas[4])
    @point=50 if(@mas[0]==@mas[4])
    return @point
  end
  def answer
    if @point == 50
      return "yacht"
    elsif @point == 40
      return "straight"
    elsif @point == 30
      return "small straight"
    elsif @point == 25
      return "full house"
    elsif @point == 0
      return "nothing"
    elsif @point
      return "quads"
    end
  end
end