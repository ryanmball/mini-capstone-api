Rails.application.routes.draw do

  get "products" => "products#index"
  post "products" => "products#create"
  get "products/:id" => "products#show"
  patch "products/:id" => "products#update"
  delete "products/:id" => "products#destroy"
  
  get "suppliers" => "suppliers#index"
  post "suppliers" => "suppliers#create"
  get "suppliers/:id" => "suppliers#show"
  patch "suppliers/:id" => "suppliers#update"
  delete "suppliers/:id" => "suppliers#destroy"

  get "images" => "images#index"
  post "images" => "images#create"
  delete "images/:id" => "images#destroy"

  get "users" => "users#index"
  post "users" => "users#create"
  
  post "sessions" => "sessions#create"
  
  get "orders" => "orders#index"
  post "orders" => "orders#create"
  get "orders/:id" => "orders#show"
  delete "orders/:id" => "orders#destroy"

  get "carted_products" => "carted_products#index"
  post "carted_products" => "carted_products#create"
  delete "carted_products/:id" => "carted_products#destroy"
end
