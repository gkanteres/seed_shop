class ProductsController < ApplicationController
  #before_action :authenticate_user!, except: [:index, :show]
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
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

  def set_category
    @category= Category.find(params[:category_id])
  end

  def product_params
    params.require('product').permit(:name, :description, :price, :image, :category_id, :user_id, :cart_id)
  end


end
