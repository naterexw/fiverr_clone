class ReviewsController < ApplicationController

  def create
    @review = current.user.reviews.create(review_params)
    redirect_to @review.service
  end

  def destroy
    @review = Review.find(params[:id])
    service = @review.service
    @review.destroy
    redirect_to service
  end

  private

  def reviews_params
    params.require(:review).permit(:comment, :start, :service_id)
  end
end
