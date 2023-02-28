Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/home", to: "pages#home", as: "home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users
  resources :events
  resources :event_artists
  resources :bookings
  resources :artists
  devise_for :users, skip: [:sessions]

end
