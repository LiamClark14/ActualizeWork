Rails.application.routes.draw do

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/contacts" => "contacts#index"
    get "find_contact/:id" => "contacts#show"
    get "/contact_url" => "contacts#contact_method"
    get "/all_contacts_url" => "contacts#all_contacts_method"
    post "/contacts" => "contacts#create"
    patch "/contacts/:id" => "contacts#update"
    delete "/contacts/:id" => "contacts#destroy"
  end
end
