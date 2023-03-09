Rails.application.routes.draw do
  devise_for :users
  root to: "events#index"
  resources :events do
    resources :event_ratings, only: %i[new create]
  end
end
