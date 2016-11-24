Rails.application.routes.draw do
  resources :rooms, only: %i(index new create show)
  devise_for :users, controllers: { registrations: "users/registrations" }
  root to: "rooms#index"
end
