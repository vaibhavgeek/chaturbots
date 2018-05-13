class SettingsController < ApplicationController
    before_action :authenticate_user!

  def payment
  end

  def account

  end

  private 
  def organisation_params
  	params.require(:organisation).permit(:avatar)
  end
end
