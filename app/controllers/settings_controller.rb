class SettingsController < ApplicationController
    before_action :authenticate_user!

  def payment
  end

  def account
  	@organisation = Organisation.find(request.params[:id])
    @user = current_user
   end



def update_password
    @user = current_user
    if @user.update_with_password(user_params)
      # Sign in the user by passing validation in case their password changed
      bypass_sign_in(@user)
      redirect_to root_path
    else
      render "account"
    end
  end

  private

  def user_params
    params.require(:user).permit(:current_password,:password, :password_confirmation)
  end

=begin
  private 
  def organisation_params
  	params.require(:organisation).permit(:avatar)
  end
=end
end
