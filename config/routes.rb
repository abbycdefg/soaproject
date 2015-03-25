Rails.application.routes.draw do
  devise_for :users, controllers: {sessions: "users/sessions"}


  root to: "pages#index"

  resources :creatures
  resources :locations
  resources :maps
  resources :user_creatures
  resources :creature_locations
  resources :user_locations


  get 'game_master/catch' => 'game_master#catch', as: :game_master_catch 
end
