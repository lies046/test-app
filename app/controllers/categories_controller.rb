class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @post = PostCategoryRelation.where(category_id: @category.id)
  end
end
