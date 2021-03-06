class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :set_category
  before_action :set_product
  before_filter :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @review = Review.new
  end

  def edit
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    @review.user = current_user
      if @review.save
        redirect_to category_product_path(@category, @product)
      else
        flash[:notice] = "There was a problem creating the review."
        render :new
      end
    end

  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to @review, notice: 'Review was successfully updated.' }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @review.destroy
    redirect_to category_product_path(@category, @product)
  end

  private
    def set_review
      @review = Review.find(params[:id])
    end

    def set_category
      @category = Category.find(params[:category_id])
    end

    def set_product
      @product = Product.find(params[:product_id])
    end

    def review_params
      params.require('review').permit(:review_title, :review_content, :product_id, :user_id)
    end
end
