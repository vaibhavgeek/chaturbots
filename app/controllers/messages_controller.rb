class MessagesController < ApplicationController
	 skip_before_action	 :verify_authenticity_token  

	def create 
		puts request.params
		visitor = Visitor.where(:auth_token => request.params[:auth_token]).first
		@me = Message.create! content: request.params["chat_box"] , responder: "user" , visitor_id: visitor.id , user_id: 1 , payload: nil , organisation_id: visitor.organisation_id , ml: false , cable: false , payload: "nil"
    	@k = ReplyApiJob.perform_now(@me)
	end

	private 

# not being used becuase you do not understand the logic behind using it. 
# You need to make notes on different conventions used in rails and why. 
	def message_params
	  	params.require(:message).permit(:content, :responder , :visitor_id , :cable , :payload , :organisation_id , :ml , :user_id)


	end

end
