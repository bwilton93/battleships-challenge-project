class Game
  def initialize
    @placed_ships = []
  end

  def unplaced_ships
    ships = ["SS", "SSSSS"]
  end

  def placed_ships
    return @placed_ships.flatten(1)
  end

  def rows
    return 10
  end

  def cols
    return 10
  end

  def place_ship(parameters = {})
    @ship_position = []
    @ship_position << [parameters[:row], parameters[:col]]
    
    for i in 1..parameters[:length]
      case parameters[:orientation]
      when :horizontal
        @ship_position[i] = [parameters[:row], parameters[:col] + i]
      when :vertical
        @ship_position[i] = [parameters[:row] - i, parameters[:col]]
      end
    end
    
    if can_place(@ship_position)
      @placed_ships << @ship_position
    end
  end

  def can_place(ship)
    ship.each do |coordinate|
      for i in 0...@placed_ships.length 
        return false if @placed_ships[i].include? coordinate
      end
    end
  end

  def ship_at?(x, y)
    return placed_ships.include? [x, y]
  end
end
