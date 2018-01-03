require 'net/http'
require 'uri'

class MessageBroadcastJob < ApplicationJob
  queue_as :high_priority

  def perform(message)
    auth_token = message.visitor.auth_token
    ActionCable.server.broadcast "chatbot#{auth_token}" , message: render_text_message(message) , auth_token: auth_token
    if message.responder == "user" && message.payload == "nil"
     # speech_res = api_response(message.content)
     # Message.create! content: speech_res , responder: "bot" , visitor_id: message.visitor.id, user_id:1 , payload: "nil"
    end
  end

  def api_response(query)
    url = URI("http://0.0.0.0:1995/query?q="+query)
    http = Net::HTTP.new(url.host, url.port)
    request = Net::HTTP::Get.new(url)
    response = http.request(request)
    object = JSON.parse(response.read_body.to_s)
    string_return = object["result"]["answer"] + "<br/> <br/>" + object["result"]["url"]
    return string_return
  end
  
  private

  def render_text_message(message)
  	ApplicationController.renderer.render(partial: 'messages/message' , locals: { message: message })
  end

  def spell_checker_message(message,correct)
    ApplicationController.renderer.render(partial: 'messages/spell_check' , locals: { message: message , correct: correct})
  end
  
end
