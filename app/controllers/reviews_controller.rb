class ReviewsController < ApplicationController
  before_action :current_user

  def create
    @product = Product.find product_id
    @review = @product.reviews.new(rating: rating, description: description)
    @review.user = current_user
    if @review.save
      redirect_to root_path
    else
      flash[:danger] = @review.errors.to_a
      redirect_to product_path product_id
    end
  end

  def destroy
    @review = Review.find review_id
    @review.destroy
    redirect_to product_path product_id, notice: 'Review deleted!'
  end

  private
  def product_id
    params[:product_id]
  end

  def rating
    params[:review][:rating]
  end

  def description
    params[:review][:description]
  end

  def review_id
    params[:id]
  end
end