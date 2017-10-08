Rails.application.routes.draw do

  root to: "users#index"

  resources :users, only: [:index]

  resources :poker_rooms
  
end
