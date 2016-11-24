Rails.application.routes.draw do
  resources :messages
  resources :rooms
  devise_for :users, controllers: { registrations: "users/registrations" }
  root to: "pages#home"
end
