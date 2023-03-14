Rails.application.routes.draw do
  get 'likes/create'
  get 'likes/destroy'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: "pages#home"
  # get "/home", to: "pages#home", as: "home"
  get '/view_artists', to: 'artists#index', as: 'view_artists'
  get 'bookings/confirmation', to: 'bookings#confirmation', as: 'booking_confirmation'
  get '/top_rated_events', to: 'events#top_rated_events', as: 'top_rated_events'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :users
  resources :pages, only: :home
  resources :events
  resources :event_artists
  resources :bookings
  resources :artists
  resources :events do
    resources :likes, only: [:create, :destroy]
  end
end
