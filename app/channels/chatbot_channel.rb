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
    ml_s = get_ml_status(visitor.id)
    me = Message.create! content: data["message"] , responder: data["responder"]["responder"] , visitor_id: visitor.id , user_id: 1 , payload: data["responder"]["payload"] , organisation_id: visitor.organisation_id , ml: ml_s

    if data["responder"]["responder"] == "agent" || data["responder"]["responder"] == "bot"
      counter_v = get_counter_visitor(visitor.id)
      ActionCable.server.broadcast "notifications_visitor#{auth}" , counter: counter_v , message: data["message"]
    else
      counter_o = get_counter_organisation(visitor.organisation_id)
      ActionCable.server.broadcast "notifications_org#{visitor.organisation_id}", message: organisation_notification(data["message"] , auth) , counter: counter_o 
    end
    # ActionCable.server.broadcast "chatbot" , message: data["message"]
  end

  def get_ml_status(id)
    redis_ml = id.to_s + "ml"
    if redis.get(redis_ml).to_s == "1"
      ml_true = true
    else
      ml_true = false
    end
    return ml_true
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

  def visitor_notification(message , number)
    ApplicationController.renderer.render(partial: 'home/partials/visitor_popup' , locals: { message: message , number: number })
  end

  def organisation_notification(message , auth)
    ApplicationController.renderer.render(partial: 'notifications/organisation' , locals: { message: message  , auth: auth})
  end
  def redis
    Redis.new
  end
end


  