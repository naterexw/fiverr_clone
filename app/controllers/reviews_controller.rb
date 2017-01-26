class ReviewsController < ApplicationController

  def create
    @review = current_user.reviews.create(review_params)
    redirect_to @review.service
  end

  def destroy
    @review = Review.find(params[:id])
    service = @review.service
    @review.destroy
    redirect_to service
  end

  private

  def review_params
    params.require(:review).permit(:comment, :star, :service_id)
  end
end
