Rails.application.routes.draw do
  devise_for :users

  resources :parking_spots

  root 'parking_spots#index'
end
