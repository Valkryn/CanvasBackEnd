Rails.application.routes.draw do
  # resources :comments
  # resources :likes
  # resources :posts
  # resources :categories
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/posts" , to: "posts#index"
  get "/posts/:id" , to: "posts#show"
  get "/temp" , to: "application#temp"



  # resources :users, only: [:create , :index]

  resources :users, only: [:create]
  post "/login", to: "users#login"
  get "/autologin", to: "users#autologin"
  get "/logout", to: "users#logout"
  patch "/profile", to: "users#profile"
end
