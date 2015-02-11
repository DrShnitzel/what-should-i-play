Rails.application.routes.draw do
  get 'user/recommendations'

  root 'home#index'
  get 'home/index'

  devise_for :users, controllers:
    { omniauth_callbacks: 'omniauth_callbacks' }
end
