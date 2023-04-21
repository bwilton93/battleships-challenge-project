require 'game'

RSpec.describe Game do
  context "initializes" do
    it "with an empty board of placed ships" do
      game_object = Game.new
      expect(game_object.placed_ships).to eq []
    end

    it "with a full list of unplaced ships" do
      
    end
  end

  context "can place ships" do
    it "can place a single ship" do
      game_object = Game.new
      ship_1 = {
        length: 2,
        orientation: :horizontal,
        row: 2,
        col: 2
      }
      game_object.place_ship(ship_1)
      expect(game_object.placed_ships).to eq [[2,2],[2,3],[2,4]]
    end

    it "can place multiple ships" do
      game_object = Game.new
      ship_1 = {
        length: 2,
        orientation: :horizontal,
        row: 2,
        col: 2
      }
      ship_2 = {
        length: 2,
        orientation: :horizontal,
        row: 3,
        col: 2
      }
      game_object.place_ship(ship_1)
      game_object.place_ship(ship_2)
      expect(game_object.placed_ships).to eq [[2,2], [2,3], [2,4], [3,2], [3,3], [3,4]]
    end
  end

  context "cant place ships" do
    it "won't place a ship if space already occupied ship" do
      game_object = Game.new
      ship_1 = {
        length: 2,
        orientation: :horizontal,
        row: 2,
        col: 2
      }
      ship_2 = {
        length: 2,
        orientation: :vertical,
        row: 2,
        col: 2
      }
      game_object.place_ship(ship_1)
      game_object.place_ship(ship_2)
      expect(game_object.placed_ships).to eq [[2,2],[2,3],[2,4]]
    end
  end
end
