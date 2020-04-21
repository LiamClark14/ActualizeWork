Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/params_game" => "games#params_method"
    get "/params_game/:number" => "games#guess_method"
    post "/body_params_game" => "games#guess_method"
    post "/valid_credentials" => "games#credential_method"
  end
end
