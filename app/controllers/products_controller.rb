class ProductsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :set_store, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def new
    @image = Dir.new(Rails.root.to_s + "/app/assets/images").to_a.select{|f| f.downcase.match(/\.jpg|\.jpeg|\.png/) }.sample
  end

  def create
    @store = Store.find(params[:store_id])
    @product = @store.products.new(product_params)
    if @product.save
      redirect_to store_path(@store)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to store_product_path(@store, @product)
    else
      render :edit
    end
  end

  def destroy
    if @product.destroy
      redirect_to store_path(@store)
    else
      redirect_to store_path(@store)
    end
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def set_store
    @store = Store.find(params[:store_id])
  end

  def product_params
    params.require('product').permit(:name, :description, :price, :image, :store_id, :category_id, :user_id, :cart_id)
  end


end
