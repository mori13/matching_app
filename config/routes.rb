Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get 'home/index'
  get "users/show" => "users#show"
  
  get 'rooms/index'
  get 'rooms/show'
  get 'rooms/new'
  get 'rooms/create'
  get 'rooms/edit'
  get 'rooms/update'
  get 'rooms/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
