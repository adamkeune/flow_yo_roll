Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    post "/users" => "users#create" # build later
    post "/sessions" => "sessions#create" # build later

    get "/techniques" => "techniques#index"
    # get "/techniques/new" => "techniques#new"
    post "/techniques" => "techniques#create"
    get "/techniques/:id" => "techniques#show"
    # get "/techniques/:id/edit" => "techniques#edit"
    patch "/techniques/:id" => "techniques#update"
    delete "/techniques/:id" => "techniques#destroy"

    get "/videos" => "videos#index"
    post "/videos" => "videos#create"
    get "/videos/:id" => "videos#show"
    # patch "/videos/:id" => "videos#update" NOT NEEDED
    delete "/videos/:id" => "videos#destroy"

    get "/practices" => "practices#index"
    post "/practices" => "practices#create"

    get "/flows" => "flows#index"
    post "/flows" => "flows#create"
    get "/flows/:id" => "flows#show"
    patch "/flows/:id" => "flows#update"
    delete "/flows/:id" => "flows#destroy"

    post "/flow_techniques" => "flow_techniques#create"
    delete "/flow_techniques/:id" => "flow_techniques#destroy"
  end
end
