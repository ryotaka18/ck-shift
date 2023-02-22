Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
get 'posts',to:'posts#index'
get 'posts/new',to:'posts#new'
  # Defines the root path route ("/")
  # root "articles#index"
end
