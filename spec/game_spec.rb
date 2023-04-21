require 'game'

RSpec.describe Game do
  context "initializes" do
    it "with an empty board of placed ships" do
      game_object = Game.new
      expect(game_object.placed_ships).to eq []
    end
  end

  it "can place a single ship" do
    game_object = Game.new
    game_object.place_ship(
      length: 2,
      orientation: {"v" => :vertical, "h" => :horizontal}.fetch("h"),
      row: 2.to_i,
      col: 2.to_i
    )
    expect(game_object.placed_ships).to eq [[2,2],[2,3],[2,4]]
  end
end
