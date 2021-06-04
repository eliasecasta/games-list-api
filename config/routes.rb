Rails.application.routes.draw do
  get "sessions/new"
  get "sessions/create"
  get "sessions/login"
  get "sessions/welcome"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :games do
    put :favourite, on: :member
  end
  resources :users, only: [:new, :create]
  resources :favourites, only: [:index]
  post "login", to: "sessions#create"
end
