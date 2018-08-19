require "razorpay"
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :check_payment
  include ActionView::Helpers::DateHelper

  private
  	def check_payment
  		if current_user
  			if current_user.status  == "created"
  				t = (Time.at(current_user.charge_at) - Time.now())
  				tt = distance_of_time_in_words(t)
  				@message = "You have #{tt} left for your trial to get over."
  			end
  		end
  	end
end
