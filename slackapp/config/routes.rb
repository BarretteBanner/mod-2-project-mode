Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  

  resources :user, :channel, :post, :dm, :message
  get "base/home", to: "base#home"
  get "base/analytics", to: "base#analytics"
  get "base/sign_up", to: "base#sign_up"
  get "base/login", to: "base#login"
  post "application/authenticate", to: "application#authenticate"
  get "dm/:id1/:id2", to: "dm#show"
end
