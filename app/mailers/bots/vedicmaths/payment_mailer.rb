class Bots::Vedicmaths::PaymentMailer < ApplicationMailer
	default from: "vaibhavblogger@gmail.com"
	
	def send_videos(email)
   		mail(:to => email, :subject => "VedicMaths Videos!" , content_type: "text/html")  
	end
end
