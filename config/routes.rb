Rails.application.routes.draw do
  devise_for :users, controllers: {sessions: "users/sessions"}


  root to: "pages#index"

  resources :creatures
  resources :locations
  resources :maps
end
