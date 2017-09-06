class MessageBroadcastJob < ApplicationJob
  queue_as :high_priority

  def perform(message)
    auth_token = message.visitor.auth_token
  	cat = "48be2ff037c347e68180ba5ecff61910"
    puts message 
    puts "\n \n \n \n \n"
    ActionCable.server.broadcast "chatbot#{auth_token}" , message: render_text_message(message)
    if message.responder == "user"
      client = ApiAiRuby::Client.new(:client_access_token => cat)
    	response = client.text_request message.content.to_s
       if response[:result][:fulfillment][:speech] != ""
         speech_res = response[:result][:fulfillment][:messages][0][:speech]
    	   Message.create! content: speech_res , responder: "bot" , visitor_id: message.visitor.id, user_id:1 , payload: "nil"
       end
    end 
  end

  private

  def render_text_message(message)
  	ApplicationController.renderer.render(partial: 'messages/message' , locals: { message: message })
  end

  def render_what_is_vedic_maths(message)
    ApplicationController.renderer.render(partial: 'bots/vedicmaths/what_is' , locals: {message: message})
  end
end
