Rails.application.routes.draw do
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/first-route', to: 'home#method1'
  get '/second-route/:id', to: "home#method2"
  get '/third-route/:number1/:number2', to: "home#method3"
  get '/fourth-route', to: "home#method4"


  post '/create-user', to: "home#create_user"
  post '/create-post', to: "home#create_post"
  # Defines the root path route ("/")
  # root "articles#index"
end
