Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: "pages#home"
  # get "/home", to: "pages#home", as: "home"
  get '/view_artists', to: 'artists#index', as: 'view_artists'
  get 'payments', to: 'bookings#payments'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :users
  resources :pages, only: :home
  resources :events
  resources :event_artists
  resources :bookings
  resources :artists
end
