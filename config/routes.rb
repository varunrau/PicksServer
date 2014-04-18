Picks::Application.routes.draw do

  scope path: "api" do
    scope path: "v1" do
      resource :user
    end
  end
end
