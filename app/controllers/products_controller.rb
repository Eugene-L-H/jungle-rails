class ProductsController < ApplicationController

  def index
    # MODEL
    @products = Product.all.order(created_at: :desc)
    
    # VIEW
    # render :index | happens implicitly behind the scenes
  end

  def show
    @product = Product.find params[:id]
  end

end
