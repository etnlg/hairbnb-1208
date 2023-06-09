Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :wigs do
    resources :bookings, only: [:new, :create, :show, :destroy]
  end
  get "location", to: "wigs#by_location", as: :by_location
  get "bookings/client", to: "bookings#client", as: :booking_client
  get "bookings/owner", to: "bookings#owner", as: :booking_owner
  get "bookings/choice", to: "bookings#choice", as: :booking_choice
  # resources :bookings, only: [:new, :create, :show, :destroy]
  patch "bookings/:id/accept", to: "bookings#accept", as: :accept
  patch "bookings/:id/decline", to: "bookings#decline", as: :decline
  # Defines the root path route ("/")
  # root "articles#index"
end
