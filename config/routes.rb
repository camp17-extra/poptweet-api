Rails.application.routes.draw do
  devise_for :user, only: []
  namespace :api, {format: 'json'} do
    namespace :v1 do
      resources :tweets
      resource :login, only: [:create], controller: :sessions
      resource :users, only: [:create]
    end
  end
end
