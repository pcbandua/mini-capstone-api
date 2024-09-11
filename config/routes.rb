Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  get "/products" => "products#index"
  post "/products" => "products#create"
  get "/products/:id" => "products#show"
  put "/producsts/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  # Defines the root path route ("/")
  # root "posts#index"
end
