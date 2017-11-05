# frozen_string_literal: true

class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @reviews = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    review = Review.new(review_params)

    if review.save
      redirect_to reviews_path
    else
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    book = Review.find(params[:id])

    if review.update(review_params)
      redirect_to reviews_path
    else
      render :edit
    end
  end

  def destroy
    Review.find(params[:id]).destroy
    redirect_to reviews_path
  end

  private def review_params
    params.require(:review).permit(:username, :title, :rating, :comment)
  end
end
