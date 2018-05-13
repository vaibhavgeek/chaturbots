class Bots::VedicmathsController < ApplicationController

def update_visitor
	puts request.params 
	visitor_id  = request.params[:id]
	email = request.params[:email]
	Visitor.find(visitor_id).update(:email => email)
	
end	

def payment_done
	email = Visitor.find(request.params[:id]).email
	Bots::Vedicmaths::PaymentMailer.send_videos(email).deliver_later

end
end
