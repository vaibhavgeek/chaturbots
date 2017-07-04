class Bots::InstaremController < ApplicationController
	
	private 
	def message_params
		params.require(:message).permit(:message, :session_id , :from_id)
	end
end
