require 'game'

RSpec.describe Game do
  context "initializes" do
    it "with an empty board of placed ships" do
      game_object = Game.new
      expect(game_object.placed_ships).to eq []
    end
  end
end
