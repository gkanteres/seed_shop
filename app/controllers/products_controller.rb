class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :set_tags
  before_action :set_categories
  # before_action :set_user
  before_action :set_category, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @tags = Tag.all
    @products = Product.all
    if params[:search]
      @products = Product.search(params[:search]).order("name DESC")
      @tags = Tag.search(params[:search]).order("name DESC")
    else
      flash[:notice] = "Search returned no results"
    end
  end

  def new
    @category = Category.find(params[:category_id])
    @product = Product.new
  end

  def create
    @category = Category.find(params[:category_id])
    @product = @category.products.new(product_params)
    if @product.save
      redirect_to category_path(@category)
    else
      flash[:notice] = "There was a problem creating the product."
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to category_product_path(@category, @product)
    else
      flash[:notice] = "There was a problem updating the product."
      render :edit
    end
  end

  def destroy
    if @product.destroy
      redirect_to category_path(@category)
    else
      redirect_to category_path(@category)
    end
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def set_tags
    @tags = Tag.all
  end

  def set_categories
    @categories = Category.all
  end

  def set_category
    @category = Category.find(params[:category_id])
  end

  # def set_user
  #   @review = @product.reviews(params[:review_id])
  #   @review.user = current_user
  # end

  def product_params
    params.require('product').permit(:name, :latin_name, :description, :price, :image, :category_id, :user_id, :cart_id, tag_ids: [])
  end

end
