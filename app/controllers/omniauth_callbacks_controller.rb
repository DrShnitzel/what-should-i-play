class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  skip_before_action :verify_authenticity_token

  def steam
    @user = User.from_omniauth(request.env['omniauth.auth'])
    @user ? success : failure
    render json: request.env['omniauth.auth']
  end

  def success
    sign_in @user
  end

  def failure
  end
end
