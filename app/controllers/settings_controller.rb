class SettingsController < ApplicationController
    before_action :authenticate_user!

  def payment
    @organisation = Organisation.find(request.params[:id])
  end

  def account
  	@organisation = Organisation.find(request.params[:id])
    @user = current_user
   end


   def theme 
    @organisation = Organisation.find(request.params[:id])

   end

   def update_theme
    @organisation = Organisation.find(params[:id])
    respond_to do |format|
      if @organisation.update(organisation_params)
        format.html { redirect_to settings_theme_organisation_url(@organisation.id) , notice_error: "Updated Theme Sucessfully"}
        format.json { render :show, status: :ok , location: @organisation}
      else
        format.html { render :edit }
        format.json { render json: @organisation.errors, status: unprocessable_entity}
      end
    end
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

  def organisation_params
  	params.require(:organisation).permit(:bg_color , :p_color , :s_color , :icon_color, :bg_img , :p_f_color , :s_f_color , :delete_logo)
  end
end
