Rails.application.routes.draw do
  resources :blogs
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  get 'hello/world'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
