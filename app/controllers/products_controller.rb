class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.includes(:reviews, reviews: :user).find(params[:id])
    @review = Review.new
  end

end
