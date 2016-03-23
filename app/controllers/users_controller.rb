class UsersController < ApplicationController
  before_filter :authenticate_user!

  def show
    @categories = Category.all
    @user = User.find(params[:id])
  end
end