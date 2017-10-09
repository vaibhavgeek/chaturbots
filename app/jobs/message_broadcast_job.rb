require 'net/http'
require 'uri'
class MessageBroadcastJob < ApplicationJob
  queue_as :high_priority

  def perform(message)
    auth_token = message.visitor.auth_token
  	#cat = "48be2ff037c347e68180ba5ecff61910"
    if message.payload.strip == "nil"
      main_uri =   "https://dcb-hacks-ai.herokuapp.com/" 
      send_uri = main_uri + "spell_check?q=" + message.content.strip.downcase
      url = URI(send_uri)
      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      request = Net::HTTP::Get.new(url)
      response = http.request(request)
      response_text = response.read_body.strip

      response_from_uri_tag = main_uri + "text_tag?q=" + message.content.strip.downcase
      url_ai = URI(response_from_uri_tag)
      http_ai = Net::HTTP.new(url_ai.host, url_ai.port)
      http_ai.use_ssl = true
      http_ai.verify_mode = OpenSSL::SSL::VERIFY_NONE
      request_ai = Net::HTTP::Get.new(url_ai)
      response_ai = http_ai.request(request_ai)
      response_ai_tag = response_ai.read_body.strip

      puts response_ai_tag 
      puts "\n \n \n \n \n \n"
      array = ["greeting" , "balance" , "transfer" , "remittence"]
      if array.include? response_ai_tag 
          tag_id = Tag.where(:tag_name => response_ai_tag).first.id
          ActionCable.server.broadcast "chatbot#{auth_token}" , message: render_text_message(message)
      


      end 
      if response_text != message.content.strip 
        ActionCable.server.broadcast "chatbot#{auth_token}" ,  message: spell_checker_message(message, response_text)
      else
        ActionCable.server.broadcast "chatbot#{auth_token}" , message: render_text_message(message)
      end
    else 
        ActionCable.server.broadcast "chatbot#{auth_token}" , message: render_text_message(message)
    end  
    if message.responder == "user"
     # client = ApiAiRuby::Client.new(:client_access_token => cat)
     #	response = client.text_request message.content.to_s
     # if response[:result][:fulfillment][:speech] != ""
     #    speech_res = response[:result][:fulfillment][:messages][0][:speech]
     #	   Message.create! content: speech_res , responder: "bot" , visitor_id: message.visitor.id, user_id:1 , payload: "nil"
     #  end
    end 
  end

  private

  def render_text_message(message)
  	ApplicationController.renderer.render(partial: 'messages/message' , locals: { message: message })
  end

  def spell_checker_message(message,correct)
    ApplicationController.renderer.render(partial: 'messages/spell_check' , locals: { message: message , correct: correct})
  end
  
end
