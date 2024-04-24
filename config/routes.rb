Rails.application.routes.draw do
  
  get 'sign_up', to: "users#new"
  post 'sign_up', to: "users#create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get 'login', to: "sessions#new"
  post 'login', to: "sessions#create"
  delete 'logout', to: "sessions#destroy"
  root "feed#show"
end
