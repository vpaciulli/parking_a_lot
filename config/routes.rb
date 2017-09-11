Rails.application.routes.draw do
  get 'parking_spots/index'

  resources :parking_spots

  root 'parking_spots#index'
end
