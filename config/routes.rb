Rails.application.routes.draw do
  get 'comment/index'
  get 'comment/new'
  get 'comment/create'
  get 'comment/show'
  get 'comment/edit'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/articles", to: "articles#index", as: "articles"
  get "/articles/new", to: "articles#new", as: "new_article"
  post "/articles", to: "articles#create", as: "create_article"
  get "/articles/:id", to: "articles#show", as: "article"
  get "/articles/:id/edit", to: "articles#edit", as: "edit_article"
  patch "/articles/:id", to: "articles#update", as: "update_article"
  delete "/articles/:id", to: "articles#destroy", as: "destroy_article"


end
