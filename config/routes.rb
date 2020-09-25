Rails.application.routes.draw do

  resources :comments
  resources :likes
  resources :posts, only: [:index, :show, :update]
  resources :categories
  resources :users, only: [:create , :index]
  resources :posts, only: [:create]

  post "/login", to: "users#login"
  get "/autologin", to: "users#autologin"
  get "/logout", to: "users#logout"
  patch "/profile", to: "users#profile"


  delete "/comments/:id", to: "comments#destroy"
  get "/comments/:id", to: "comments#show"


end
