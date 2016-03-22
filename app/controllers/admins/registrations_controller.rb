class Admins::RegistrationsController < Devise::RegistrationsController
# before_filter :configure_sign_up_params, only: [:create]
# before_filter :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
   def new
     @categories = Category.all
     super
   end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  private

  def sign_up_params
    #@categories = Category.all
    params.require(:admin).permit(:email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:admin).permit(:email, :password, :password_confirmation, :current_password)
  end
end
