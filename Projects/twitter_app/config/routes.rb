Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/users" => "tweets#index"
    post "/users" => "tweets#create"
    get "/users/:id" => "tweets#show"
    patch "/users/:id" => "tweets#update"
  end
end
