class MessageBroadcastJob < ApplicationJob
  queue_as :default

  def perform(message)
    chat_id =  195
    auth_token = message.visitor.auth_token
  	ActionCable.server.broadcast "chatbot#{auth_token}" , message: render_message(message)
  	client = ApiAiRuby::Client.new(
    :client_access_token => '48be2ff037c347e68180ba5ecff61910'
    )
    if message.responder == "user"
    	response = client.text_request message.content.to_s
    	speech_res = response[:result][:fulfillment][:messages][0][:speech]
    	Message.create! content: speech_res , responder: "bot" , visitor_id: 210 , user_id:1
    end	
  end
 
  private

  def render_message(message)
  	ApplicationController.renderer.render(partial: 'messages/message' , locals: { message: message })
  end
end
