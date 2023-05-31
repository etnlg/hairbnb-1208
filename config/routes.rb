Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :wigs
  get "location", to: "wigs#by_location", as: :by_location
  get "bookings/client", to: "bookings#client", as: :booking_client
  get "bookings/owner", to: "bookings#owner", as: :booking_owner
  resources :bookings, only: [:new, :create, :show, :destroy]
  patch "bookings/:id", to: "bookings#accept", as: :accept
  patch "bookings/:id", to: "bookings#decline", as: :decline
  # Defines the root path route ("/")
  # root "articles#index"
end
