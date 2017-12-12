class Admin::CategoriesController < ApplicationController
  http_basic_authenticate_with name:  ENV['ADMIN_NAME'], password: ENV['ADMIN_PASS'], only: [:index, :show, :create, :new, :destroy]
  
  def index
    @categories = Category.order(id: :desc).all
  end

  def new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to [:admin, :categories], notice: 'Category created!'
    else
      render :new
    end
  end

  private

  def category_params
    params.require(:category).permit(
      :name,
      :description
      )
  end

end
