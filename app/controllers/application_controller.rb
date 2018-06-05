require "razorpay"
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

end

def razor_pay
	@rzp = Razorpay.setup('rzp_test_FNFDC2iHFCf4ML', 'CJeHD7kK93aF9LFIyQN0dYM2')
end
