class GamesController < ApplicationController

  def index 
    @one_dollar_tokens = tokens_per_dollar_amount(1)
    @two_dollar_tokens = tokens_per_dollar_amount(2)
    @five_dollar_tokens = tokens_per_dollar_amount(5)
    @ten_dollar_tokens = tokens_per_dollar_amount(10)
  end
end
