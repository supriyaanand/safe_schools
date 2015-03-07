class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @schools = School.all
  end

  def create
    @review = Review.new(review_params)
    @review.save
    redirect_to @review
  end

  def show
  end

  private
  def review_params
    params.require(:review).permit(:school_id, :surroundings_good, :teacher_bg,
                                   :helpers_bg, :security, :safe_at_school,
                                   :comments, :overall_rating )
  end

end

