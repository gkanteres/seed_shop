class StoriesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  # before_action :set_user, only: [:create]

  def index
    @stores = Store.all
  end

  def show
    @products = Store.products
  end

  def new
    @store = Store.new
  end

  def create
  end

  def edit
  end

  def updated
  end

  private

  def store_params
    params.require(:store).permit(:name)
  end

end
