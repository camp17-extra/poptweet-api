Rails.application.routes.draw do
  devise_for :user, only: []
  namespace :api, {format: 'json'} do
    namespace :v1 do
      resources :tweets do
        resources :replies, only: [:create, :update, :destroy]
      end
      resource :login, only: [:create], controller: :sessions
      resources :users, only: [:show, :create]
    end
  end
end
