Picks::Application.routes.draw do

  get "picture/index"
  get "picture/rate"
  scope path: :api, defaults: {format: :json} do
    scope path: :v1 do
      post 'new', controller: 'api/v1/user'
      post 'upload', controller: 'api/v1/user'

      get 'pictures', controller: 'api/v1/pictures'
      post 'rate', controller: 'api/v1/pictures'
    end
  end
end
