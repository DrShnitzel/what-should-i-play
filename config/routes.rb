Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'

  devise_for :users, controllers:
    { omniauth_callbacks: 'omniauth_callbacks' }
end
