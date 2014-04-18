Picks::Application.routes.draw do

  scope module: "api" do
    scope module: "v1" do
      resource :user
    end
  end
end
