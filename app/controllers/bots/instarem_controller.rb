require 'uri'
require 'net/http'
require 'htmlentities'

class Bots::InstaremController < ApplicationController

	def show
		@messages = Message.all
	end
	
	def index
		#render :layout => false
		@message = Message.new
		@messages = Message.all
#		MessageBroadcastJob.perform_later @messages.last
		respond_to do |format|
  			format.html { render :layout => 'bot' } # your-action.html.erb
		end
	end

	def create 
		@message = Message.new(message_params)
	     client = ApiAiRuby::Client.new(
           :client_access_token => '31f5d2bb49ce4577bb5303f72be6ff75'
           )
      response = client.text_request @message.content.to_s
        speech_res = response[:result][:fulfillment][:messages][0][:speech]
      Message.create! content: speech_res
	end
	private 
	def message_params
		params.require(:message).permit(:content, :user_id , :responder)
	end

	def api_ai
		client = ApiAiRuby::Client.new(:client_access_token => '31f5d2bb49ce4577bb5303f72be6ff75')
	end

	def instarem_api
		return "json"
	end
end
