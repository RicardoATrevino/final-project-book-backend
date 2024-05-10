Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  get "/books" => "books#index"
  get "/books/:id" => "books#show"
  get "/search" => "search#search"

  post "/favorite" => "search#favorite"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  post "/favorited" => "favoriteds#create"
  get "/favorited" => "favoriteds#index"
  delete "/favorited/:id" => "favoriteds#destroy"
end
