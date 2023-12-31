Rails.application.routes.draw do
  # User Routes
  post "/users" => "users#create"

  # Session Routes
  post "/sessions" => "sessions#create"

  # Game Routes
  get "/games-fetch" => "games#fetch_data"
  get "/user-games" => "games#user_index"
  get "/data-fetch" => "games#populate_descriptions"
  get "/games/:id" => "games#show"
  get "/games" => "games#index"
  post "/games" => "games#create"
  patch "/games/:id" => "games#update"
  delete "/games/:id" => "games#destroy"

  # Collection Routes
  get "/collections/:id" => "collections#show"
  get "/collections" => "collections#index"
  post "/collections" => "collections#create"
  patch "/collections/:id" => "collections#update"
  delete "/collections/:id" => "collections#destroy"

  # Review Routes
  get "/reviews/:id" => "reviews#show"
  get "/reviews" => "reviews#index"
  post "/reviews" => "reviews#create"
  patch "/reviews/:id" => "reviews#update"
  delete "/reviews/:id" => "reviews#destroy"
end
