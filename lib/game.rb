class Game
  def unplaced_ships
    ships = ["SS", "SSSSS"]
  end

  def rows
    return 10
  end

  def cols
    return 10
  end

  def place_ship(parameters = {})
    @ship_start_position = [parameters[:row], parameters[:col]]
    
    case parameters[:orientation]
    when :horizontal
      @ship_end_position = [parameters[:row], parameters[:col] + parameters[:length]]
    when :vertical
      @ship_end_position = [parameters[:row] - parameters[:length], parameters[:col]]
    end
  end

  def ship_at?(x, y)

  end
end

# game_object = Game.new
# game_object.place_ship(
#   length: 2,
#   orientation: {"v" => :vertical, "h" => :horizontal}.fetch("h"),
#   row: 2.to_i,
#   col: 2.to_i
# )
# game_object.place_ship(
#   length: 2,
#   orientation: {"v" => :vertical, "h" => :horizontal}.fetch("v"),
#   row: 2.to_i,
#   col: 2.to_i
# )
