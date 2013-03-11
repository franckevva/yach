class Player
    attr_accessor :points
    attr_reader :name
    def initialize  name="Unknown"
      @points=0
      @name=name
    end
    def add turn_points
      @points+=turn_points
    end
end