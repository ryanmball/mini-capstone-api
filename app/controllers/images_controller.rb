class ImagesController < ApplicationController

  before_action :authenticate_admin, except: [:index]

  def index
    render json: Image.all.order(:id)
  end
  
  def create
    image = Image.new(
      url: params[:url],
      product_id: params[:product_id]
    )
    image.save
    render json: image
  end

  def destroy
    image = Image.find(params[:id])
    image.destroy
    render json: { message: "Image successfully destroyed!"}
  end
end
