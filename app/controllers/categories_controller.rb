class CategoriesController < ApplicationController
  #before_action :authenticate_user!, except: [:index]
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.all
  end

  def show
    @products = Category.products
  end

  def new
    @category = Category.new
  end

  def create
    if @category.save
      redirect_to category_path(@category)
    else
      flash[:notice] = "There was a problem creating the category."
      render :new
    end
  end

  def edit
  end

  def update
    if @category.update(category_params)
      redirect_to categories_path(@category)
    else
      flash[:notice] = "There was a problem updating the category."
      render :edit
    end
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :description)
  end

end
