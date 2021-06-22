Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations'}
  get "users/show" => "users#show"
  get "users/profile" => "users#profile"
  post "users/profile" => "users#update"

  root 'home#index'
  
  get 'rooms', to: 'rooms#index'
  post 'rooms', to: 'rooms#create'
  get 'rooms/new', to: 'rooms#new', as: 'new_room'
  get 'rooms/:id/edit', to: 'rooms#edit', as: 'edit_room'
  get 'rooms/:id', to: 'rooms#show', as: 'room'
  patch 'rooms/:id', to: 'rooms#update'
  put 'rooms/:id', to: 'rooms#update'
  delete 'rooms/:id', to: 'rooms#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
