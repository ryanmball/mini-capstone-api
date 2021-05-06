Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "display_all_products" => "products#display_all_products"
  
  get "display_product" => "products#display_product"
end
