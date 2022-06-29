class Admin::DashboardController < ApplicationController

  def show
    @categories = Category.all
  end

end
