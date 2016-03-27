class CategoriesController < ApplicationController
  before_action :set_categories
  before_action :set_tags
  before_action :set_category, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]

  def index
  end

  def show
    @categories = Category.all
    @products = @category.products
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
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
      redirect_to category_path(@category)
    else
      flash[:notice] = "There was a problem updating the category."
      render :edit
    end
  end

  def destroy
    if @category.destroy
      redirect_to root_path
    else
      redirect_to categories_path(@category)
    end
  end

  private

  def set_categories
    @categories = Category.all
  end

  def set_tags
    @tags = Tag.all
  end

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :description)
  end

end
