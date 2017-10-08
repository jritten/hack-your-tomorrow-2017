Rails.application.routes.draw do
<<<<<<< HEAD
  resources :poker_rooms
=======
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "users#index"

    resources :users, only: [:index]
>>>>>>> 1b0c97dd0ea4cf1df3fcb8acce7a0c373bb077bb
end
