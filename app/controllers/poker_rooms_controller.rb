class PokerRoomsController < ApplicationController

  def show
    @user = User.all.first
    @deck_id = HTTParty.get("https://deckofcardsapi.com/api/deck/new/shuffle/?deck_count=1").parsed_response["deck_id"]
    p @first_hand = HTTParty.get("https://deckofcardsapi.com/api/deck/#{@deck_id}/draw/?count=2")["cards"]
    p @first_flop = HTTParty.get("https://deckofcardsapi.com/api/deck/#{@deck_id}/draw/?count=3")["cards"]
  end
end
