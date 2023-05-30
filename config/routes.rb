Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :wigs
  resources :bookings, only: [:index, :new, :create, :show, :destroy]
  patch "bookings/:id", to: "bookings#accept", as: :accept
  patch "bookings/:id", to: "bookings#decline", as: :decline
  # Defines the root path route ("/")
  # root "articles#index"
end
