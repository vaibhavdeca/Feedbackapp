Rails.application.routes.draw do
  get "users" => "user#index"
  get "users/new" => "user#new"
  post "users" => "user#create"
  get "users/:id" => "user#show"
  delete "users/:id" => "user#destroy"

end
