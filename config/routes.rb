Rails.application.routes.draw do
  
  get 'rooms/index'
  get 'rooms/new'
  get 'rooms/create'
  get 'rooms/update'
  root to: 'toppages#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }  
  #resources :users, :only => [:show, :profile]
  get "users/profile" => "users#profile"
  get "users/show" => "users#show"
  get "users/mypage" => "users#mypage" 
  post "users/mypage" => "users#update" 

  get 'room/index'
  get 'room/new'
  post 'room/new' => 'room#create'
  get 'room/update'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
