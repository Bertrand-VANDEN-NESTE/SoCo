Rails.application.routes.draw do
  devise_for :users
  root to: "events#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # resources :events

  # Defines the root path route ("/")
  # root "articles#index"
  get "profile", to: "pages#profile"
  resources :participants
  resources :events do
    resources :participants, only: %i[show destroy]
    resources :event_ratings, only: %i[new create]
    resources :chatrooms, only: :show do
      resources :messages, only: :create
    end
  end
  resources :participants, only: %i[destroy]
end
