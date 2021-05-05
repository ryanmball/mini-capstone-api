class ProductsController < ApplicationController
  def individual_product
    render json: Product.first.as_json
  end
end
