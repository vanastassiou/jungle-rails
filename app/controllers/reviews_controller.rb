class ReviewsController < ApplicationController
  before_action :authorize, only: [:create, :destroy]

  def create
    @review = Review.new(review_params)
    @review.product_id = params[:product_id]
    @review.user = current_user
    did_save = @review.save
    if did_save
      redirect_to :back, notice: 'Thanks for your review!'
    else
      redirect_to :back, notice: 'Something went wrong. Please try again.'
    end
  end

  def destroy
    if @review.user == current_user
      @review.destroy
      redirect_to :back, notice: 'Review was successfully deleted.'
    else
      redirect_to :back, notice: 'Can only delete your own reviews.'
    end
  end

  private
    def set_review
      @review = Review.find(params[:id])
    end

    def review_params
      params.require(:review).permit(:product_id, :user_id, :description, :rating)
    end

end
