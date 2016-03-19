class StoriesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_user, only: [:create]
  before_action :set_store, only: [:show, :edit, :update, :destroy]

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

  def set_user
    @user = User.find(params[:store][:user_id])
  end

  def set_store
    @store = Story.find(params[:id])

  def store_params
    params.require(:store).permit(:name, :user_id)
  end

end
