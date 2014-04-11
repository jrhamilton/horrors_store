class ProductUploadsController < ApplicationController

  def create
    if ProductUpload.new(params[:product_upload][:csv]).parse!
      redirect_to('/products')
    else
      redirect_to('/products/new')
    end
  end
end
