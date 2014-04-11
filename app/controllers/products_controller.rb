class ProductsController < ApplicationController

  def new
    #@product_upload = ProductUpload.new
  end

  def index
    @products = Product.all
  end

end
