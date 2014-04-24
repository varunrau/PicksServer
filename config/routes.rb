Picks::Application.routes.draw do

  scope path: :api, defaults: {format: :json} do
    scope path: :v1 do
      post 'new', controller: 'api/v1/user'
      post 'upload', controller: 'api/v1/user'
    end
  end
end
