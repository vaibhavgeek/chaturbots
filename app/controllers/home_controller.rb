class HomeController < ApplicationController

  def about_us
  end
  def contact_us
  end
  def pricing 
  end
  def index
    if session[:orga_id]
  	redirect_to organisation_home_path(:id => session[:orga_id])
    else
      if current_user
        sign_out_and_redirect(current_user)
      end
    end
  end

  def main
    @organisation_vistors = Visitor.where(:organisation_id => session[:orga_id]).all
  	@messages = Message.all  	
    @bool = 0
  end
end
