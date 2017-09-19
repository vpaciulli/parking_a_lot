Rails.application.routes.draw do
  devise_for :users

  resources :parking_spots

  root 'parking_spots#index'

  namespace :api, defaults: { format: :json } do
  	get 'list', to: 'api#list_all'

  	get 'show_spot/:id', to: 'api#show_spot'

  	get 'create', to: 'api#create_spot'

  end
end
