class Admin::DashboardController < ApplicationController

  def show
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
