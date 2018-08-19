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

  def send_email
      ContactusMailer.sample_email(request.params).deliver_later
      redirect_to home_request_path , :notice => "You have Successfully filled the form"
  end

  def main
    sub_id = current_user.subscription_id
    Razorpay.setup('rzp_test_3fUWG9VF6LL7hP', 'n7uRrF4eeQ0XFEBPlcLpHEdz')
    s = Razorpay::Subscription.fetch sub_id
    current_user.status =  s.attributes["status"]
    current_user.charge_at = s.attributes["charge_at"]
    current_user.save
    @organisation_vistors_online = Visitor.where(:organisation_id => session[:orga_id]).select(&:online?)
  	@messages = Message.all  	
    @bool = 0
  end
end
