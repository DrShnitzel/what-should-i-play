class HomeController < ApplicationController
  def index
    redirect_to user_recommendations_path if user_signed_in?
  end
end
