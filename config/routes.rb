Rails.application.routes.draw do
  get "products" => "products#index"
  # diplays all products sorted by index number
  
  get "products/:id" => "products#show"
  # displays a single product based on an id number passed through a url segment param
end
