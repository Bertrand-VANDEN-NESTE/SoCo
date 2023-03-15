Rails.application.routes.draw do
  devise_for :users
  root to: "events#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # resources :events

  # Defines the root path route ("/")
  # root "articles#index"
  get "events_map", to: "pages#events_map"
  get "profile", to: "pages#profile"
  post "/participants", to: "participants#create", as: :participant_invitation
  resources :participants
  resources :events do
    delete "image", to: "pages#image"
    resources :participants, only: %i[show destroy]
    resources :event_ratings, only: %i[new create]
    resources :chatrooms, only: :show do
      resources :messages, only: :create
    end
  end
  resources :participants, only: %i[destroy]
end
