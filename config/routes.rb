Rails.application.routes.draw do
  resources :date_ideas, only: [ :index, :create, :show, :update, :destroy ]
  # get "/date_ideas" => "date_ideas#index"
  # post "/date_ideas" => "date_ideas#create"
end
