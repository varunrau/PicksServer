Picks::Application.routes.draw do

  namespace :api, path: "", constraints: {subdomain: "api"} do
    namespace :v1 do
      resources :user
    end
  end
end
