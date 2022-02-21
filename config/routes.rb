Rails.application.routes.draw do
  resources :rangeds
  resources :infantries
  resources :cavalries
  resources :players
  resource :users, only: [:create]
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
end
