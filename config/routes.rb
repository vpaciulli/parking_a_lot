Rails.application.routes.draw do
  devise_for :users

  resources :parking_spots

  root 'parking_spots#index'

  namespace :api, defaults: { format: :json } do

  	put 'status', to: 'api#change_status'

  end
end
