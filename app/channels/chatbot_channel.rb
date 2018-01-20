class ChatbotChannel < ApplicationCable::Channel
  def subscribed
    if params[:auth_token] != "admin"
      stream_from "chatbot#{params[:auth_token]}"
      visitor = Visitor.where(:auth_token => params["auth_token"]).first
      redis.set("visitor_#{visitor.id}_online", "1")
      ActionCable.server.broadcast "appearchannel#{params[:oid]}", visitor: render_visitor(visitor),
                                 visitor_id: visitor.id,
                                 organisation_id: params[:oid],
                                 online: true
    end
  end

  def unsubscribed
    visitor = Visitor.where(:auth_token => params["auth_token"]).first
    if params["auth_token"] != "admin"
    redis.del("visitor_#{visitor.id}_online")
    ActionCable.server.broadcast "appearchannel#{params[:oid]}", 
                                 visitor_id: visitor.id, 
                                 organisation_id: params[:oid] ,
                                 visitor: render_visitor(visitor),
                                 online: false
    end
    
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    auth = data["responder"]["auth_token"].strip
    visitor = Visitor.where(:auth_token => auth).first
    Message.create! content: data["message"] , responder: data["responder"]["responder"] , visitor_id: visitor.id , user_id: 1 , payload: data["responder"]["payload"] , organisation_id: visitor.organisation_id
    if data["responder"]["responder"] == "agent" || data["responder"]["responder"] == "bot"
      puts "get_visitor"
      counter_v = get_counter_visitor(visitor.id)
      ActionCable.server.broadcast "notifications_visitor#{auth}" , counter: counter_v , message: data["message"]
    else
      counter_o = get_counter_organisation(visitor.organisation_id)
      ActionCable.server.broadcast "notifications_org#{visitor.organisation_id}", message: data["message"] , counter: counter_o
    end
    # ActionCable.server.broadcast "chatbot" , message: data["message"]
  end

  def get_counter_visitor(vid)
    counter = redis.get("unreadv_#{vid}")
    if counter
      counter = counter.to_i + 1
    else
      counter = 1
    end
    redis.set("unreadv_#{vid}" , counter)
    return counter
  end

  def get_counter_organisation(oid)
    counter = redis.get("unreado_#{oid}")
    if counter 
      counter = counter.to_i + 1
    else
      counter = 1
    end
    redis.set("unreado_#{oid}" , counter)
    return counter
  end

  private
   def render_visitor(visitor)
    ApplicationController.renderer.render(partial: 'home/partials/show_active_visitors' , locals: { visitor: visitor })
  end

  def visitor_notification(number)
    ApplicationController.renderer.render(partial: 'home/partials/visitor_popup' , locals: { number: number })
  end

  def redis
    Redis.new
  end
end


  