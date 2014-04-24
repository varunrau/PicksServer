Picks::Application.routes.draw do

  get "picture/index"
  get "picture/rate"
  scope path: :api, defaults: {format: :json} do
    scope path: :v1 do
      # create new user
      post 'new', controller: 'api/v1/user'
      # upload picture
      post 'upload', controller: 'api/v1/user'

      # Get all pictures -- don't use
      get 'pictures', controller: 'api/v1/pictures'
      # A user rates an picture
      post 'rate', controller: 'api/v1/pictures'
    end
  end
end
