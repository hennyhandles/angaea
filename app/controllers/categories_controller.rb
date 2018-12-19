class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @activities = @category.activities
  end
end
