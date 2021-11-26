Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :activities
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :kids do
    resources :bookings, only: [:new, :create]
  end
  get "book_activity/:kid_id", to: 'pages#book_activity', as: :book_activity
  get "choose_kid/:activity_id/:kid_id", to: 'pages#choose_kid', as: :choose_kid
end
