Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :activities
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :kids do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:destroy]
  get "book_activity/:kid_id", to: 'pages#book_activity', as: :book_activity
  get "book_slot/:activity_id/:kid_id", to: 'pages#book_slot', as: :book_slot
  get "dashboard", to: 'pages#dashboard', as: :dashboard
  get "slot_bookings/:slot_id", to: 'pages#slot_bookings', as: :slot_bookings
  get "new_slot/:activity_id", to: 'pages#new_slot', as: :new_slot
end
