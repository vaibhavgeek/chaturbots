require 'net/http'
require 'uri'

class MessageBroadcastJob < ApplicationJob
  queue_as :high_priority

  def perform(message)
    if message.cable != false
            auth_token = message.visitor.auth_token
            oid  = Organisation.find(message.organisation_id)
            ActionCable.server.broadcast "chatbot#{auth_token}" , message: render_text_message(message , oid) , auth_token: auth_token
            redis_key = message.visitor.id.to_s + "automate"
            #redis_ml = message.visitor.id.to_s + "ml"
            #ml_true = true if redis.get(redis_ml).to_s == "1"
            if message.responder == "user" &&  redis.get(redis_key).to_s == "1"
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
    user = User.where(:organisation_id => message.organisation_id).first
    if user.logged_in == false
      ActionCable.server.broadcast "chatbot#{auth_token}" , message: organisation_online(message) , auth_token: auth_token
    end
  end

  def api_response(query,oid)
    url = URI(ENV['LINK_PYTHON'] + "/respond?q="+query+"&id="+oid.to_s)
    http = Net::HTTP.new(url.host, url.port)
    request = Net::HTTP::Get.new(url)
    response = http.request(request)
    object = JSON.parse(response.read_body.to_s)
    puts object
    string_return = object["response"]
    puts string_return 
    puts "\n\n\n\n\n\n"
    return string_return
  end
  
  private
  def redis
    REDIS
  end

  def render_text_message(message, organisation)
  	ApplicationController.renderer.render(partial: 'messages/message_r' , locals: { message: message , :"organisation" =>  organisation})
    #puts organisation.avatar.variant("40x40")

  end

  def organisation_online(visitor)
    ApplicationController.renderer.render(partial: 'messages/offline' , locals: { visitor: visitor})
  end

  def spell_checker_message(message,correct)
    ApplicationController.renderer.render(partial: 'messages/spell_check' , locals: { message: message , correct: correct})
  end
  
end
