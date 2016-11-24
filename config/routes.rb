Rails.application.routes.draw do
  resources :rooms, only: %i(index new create show)
  devise_for :users, controllers: { registrations: "users/registrations" }
  root to: "rooms#index"

  namespace :api, defaults: { format: :json } do
    resources :rooms, only: %i(index create) do
      resources :messages, only: %i(index)
    end
  end
end
