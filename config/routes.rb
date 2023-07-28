Rails.application.routes.draw do
  
  get 'sign_up', to: "users#new"
  post 'sign_up', to: "users#create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "feed#show"

end
