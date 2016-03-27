class TagsController < ApplicationController
  before_action :set_tag, only: [:show, :edit, :update, :destroy]
  before_action :set_categories

  def index
    @tags = Tag.all
    if params[:search]
      @tags = Tag.search(params[:search]).order("name DESC")
    else
      flash[:notice] = "Search returned no results"
    end
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      redirect_to tags_path
    else
      flash[:notice] = "There was a problem creating the tag."
      render :new
    end
  end

  def show
    @products = @tag.products
  end

  def edit
  end

  def update
    if @tag.update(tag_params)
      redirect_to tag_path(@tag)
    else
      flash[:notice] = "There was a problem updating the tag."
      render :edit
    end
  end

  def destroy
    if @tag.destroy
      redirect_to tags_path
    else
      redirect_to tags_path
    end
  end

  private

  def set_tag
    @tag = Tag.find(params[:id])
  end

  def set_categories
    @categories = Category.all
  end

  def tag_params
    params.require('tag').permit(:name)
  end

end