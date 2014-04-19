Picks::Application.routes.draw do

  scope path: :api, defaults: {format: :json} do
    scope path: :v1 do
      resource :user
    end
  end
end
