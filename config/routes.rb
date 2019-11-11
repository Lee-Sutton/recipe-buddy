Rails.application.routes.draw do
  get "signup" => "users#new"
  get "login" => "session#new"
  post "login/" => "session#create"
  resources :users
  resources :recipes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
