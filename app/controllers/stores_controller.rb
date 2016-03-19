class StoresController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_user, only: [:create]
  before_action :set_store, only: [:show, :edit, :update, :destroy]

  def index
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
    @user = User.find(params[:user_id])
  end

  def set_store
    @store = Store.find(params[:id])
  end

  def store_params
    params.require(:store).permit(:name)
  end

end
