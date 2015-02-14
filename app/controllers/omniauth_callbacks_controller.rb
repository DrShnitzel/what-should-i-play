class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  skip_before_action :verify_authenticity_token

  def steam
    @user = User.from_omniauth(request.env['omniauth.auth'])
    @user ? success : failure
  end

  def success
    sign_in @user
    redirect_to user_recommendations_path
  end

  def failure
    redirect_to '/'
  end
end
