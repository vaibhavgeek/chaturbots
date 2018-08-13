require "razorpay"
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

end

def razor_pay
	@rzp = Razorpay.setup('rzp_test_3fUWG9VF6LL7hP', 'n7uRrF4eeQ0XFEBPlcLpHEdz')
end
