require "razorpay"
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :check_payment
  include ActionView::Helpers::DateHelper

  private
  	def check_payment
  		if current_user
  			sub_id = current_user.subscription_id
  			Razorpay.setup('rzp_test_3fUWG9VF6LL7hP', 'n7uRrF4eeQ0XFEBPlcLpHEdz')
  			s = Razorpay::Subscription.fetch sub_id
        puts s.attributes["status"]
  			if s.attributes["status"]  == "created"
  				t = (Time.at(s.attributes["charge_at"]) - Time.now())
  				tt = distance_of_time_in_words(t)
  				@message = "You have #{tt} left for your trial to get over."
  			end
  		end
  	end
end
