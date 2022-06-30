class Admin::DashboardController < ApplicationController

  http_basic_authenticate_with name: ENV["USERNAME"], password: ENV["PASSWORD"]

  def show
    @product_count = Product.all.count
    @category_count = Category.all.count
    
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_name)

    if @category.save
      redirect_to [:admin], notice: 'Category Created!'
    end
  end

  def category_name
    params.require(:category).permit(
      :name
    )
  end

end
