Picks::Application.routes.draw do

  scope path: :api, defaults: {format: :json} do
    scope path: :v1 do
      resource :user
      get ':facebook_id/upload/', to: 'user#upload', as: :upload
    end
  end
end
