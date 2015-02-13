class UserController < ApplicationController
  def recommendations
    @games = UserGame.unplayed_games(current_user)
  end
end
