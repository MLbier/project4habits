Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :activities
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :kids do
    resources :bookings, only: [:new, :create]
  end
  get '/kids/:id/:activity_id/', to: 'patients#show'
end
