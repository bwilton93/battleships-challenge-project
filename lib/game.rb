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
    
    if check_for_existing(@ship_position)
      @placed_ships << @ship_position
    end
  end

  def check_for_existing(ship)
    ship.each do |coordinate|
      for i in 0...@placed_ships.length 
        return false if @placed_ships[i].include? coordinate
      end
    end
  end

  def ship_at?(x, y)
    
  end
end

game_object = Game.new

game_object.place_ship(
  length: 2,
  orientation: {"v" => :vertical, "h" => :horizontal}.fetch("h"),
  row: 2.to_i,
  col: 2.to_i
)
game_object.place_ship(
  length: 2,
  orientation: {"v" => :vertical, "h" => :horizontal}.fetch("v"),
  row: 2.to_i,
  col: 2.to_i
)
game_object.place_ship(
  length: 3,
  orientation: {"v" => :vertical, "h" => :horizontal}.fetch("h"),
  row: 3,
  col: 3
)

p game_object.placed_ships
