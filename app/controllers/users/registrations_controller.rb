class Users::RegistrationsController < Devise::RegistrationsController

  def new
    @categories = Category.all
    @tags = Tag.all
    super
  end

  def create
    @categories = Category.all
    @tags = Tag.all
    super
  end

  private

  def sign_up_params
    #@categories = Category.all
    params.require(:user).permit(:email, :username, :first_name, :last_name, :address, :phone, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:email, :username, :first_name, :last_name, :address, :phone, :password, :password_confirmation, :current_password)
  end
  end
