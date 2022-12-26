Rails.application.routes.draw do
  get "/breweries" => "breweries#index"
  post "/users" => "users#create"
end
