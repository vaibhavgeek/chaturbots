require 'net/http'
require 'uri'

class MessageBroadcastJob < ApplicationJob
  queue_as :high_priority

  def perform(message)
    if message.cable != false
            auth_token = message.visitor.auth_token
            oid  = Organisation.find(message.organisation_id)
            ActionCable.server.broadcast "chatbot#{auth_token}" , message: render_text_message(message , oid) , auth_token: auth_token , responder: message.responder
            redis_key = message.visitor.id.to_s + "automate"
            if message.responder == "user" &&  REDIS.get(redis_key).to_s == "1" && message.payload == "nil"
              speech_res = api_response(message.content , message.organisation_id)
              if speech_res != "live_chat"
                Message.create! content: speech_res , responder: "bot" , visitor_id: message.visitor.id, user_id: message.user_id , payload: "nil" , organisation_id: message.organisation_id , ml: false
              else 
                check_user_online(message,auth_token)
              end
            end
    end
  end

  def check_user_online(message, auth_token)
    online = REDIS.get("org_#{message.organisation_id}")
    puts online 
    if online == "1"
      Message.create! content: "Please wait for some time and let our correspondent get back to you." , responder: "bot" , visitor_id: message.visitor.id , user_id: message.user_id , organisation_id: message.visitor.organisation_id , ml: false , tags: "oftrue" , payload: "nil"
     # ActionCable.server.broadcast "chatbot#{auth_token}" , message: organisation_online(message , true , message.organisation_id) , auth_token: auth_token , responder: "bot"
    else
      Message.create! content: "The support is not online right now. Your message has been sent." , responder: "bot" , visitor_id: message.visitor.id , user_id: message.user_id , organisation_id: message.visitor.organisation_id , ml: false , tags: "oftrue" , payload: "nil"
     # ActionCable.server.broadcast "chatbot#{auth_token}" , message: organisation_online(message , false , message.organisation_id) , auth_token: auth_token , responder: "bot"
    end

    if message.visitor.email == nil  
      Message.create! content: "Please Update Details" , responder: "bot" , visitor_id: message.visitor.id , user_id: 1 , organisation_id: message.visitor.organisation_id , ml: false , payload: "details"

    end
  end

  def api_response(query,oid)
    #url = URI(ENV['LINK_PYTHON'] + "/respond?q="+query+"&id="+oid.to_s)
    url = URI(ENV['LINK_PYTHON'] + "/respond?q="+query+"&id=19") 
    http = Net::HTTP.new(url.host, url.port)
    request = Net::HTTP::Get.new(url)
    response = http.request(request)
    string_return = JSON.parse(response.read_body.to_s)["response"]
    return string_return
  end
  
  private

  def render_text_message(message, organisation)
  	ApplicationController.renderer.render(partial: 'messages/message_r' , locals: { message: message , :"organisation" =>  organisation})
  end

  def organisation_online(visitor,wait,oid)
    ApplicationController.renderer.render(partial: 'messages/offline' , locals: { visitor: visitor , type: wait , oid: oid})
  end
=begin 
  def spell_checker_message(message,correct)
    ApplicationController.renderer.render(partial: 'messages/spell_check' , locals: { message: message , correct: correct})
  end
=end
  
end
