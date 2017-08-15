class ChatbotChannel < ApplicationCable::Channel
  def subscribed
    if params[:auth_token] == "admin"
     params[:auth_token] = Message.last.visitor.auth_token
     puts params[:auth_token]
     puts "\n\n\n"
    end
    stream_from "chatbot#{params[:auth_token]}"
    puts params.inspect
    if params["auth_token"] != "admin"
      visitor = Visitor.where(:auth_token => params["auth_token"]).first
      redis.set("visitor_#{visitor.id}_online", "1")
      ActionCable.server.broadcast "appearchannel", visitor: render_visitor(visitor),
                                 user_id: visitor.id,
                                 online: true
    end
  end

  def unsubscribed
    visitor = Visitor.where(:auth_token => params["auth_token"]).first
    if visitor != nil && params["auth_token"] != "admin"
    redis.del("visitor_#{visitor.id}_online")
    ActionCable.server.broadcast "appearchannel", 
                                 user_id: visitor.id, visitor: render_visitor(visitor),
                                 online: false
    end
    
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data) 
    puts data 
    puts "\n\n\n\n"
  	Message.create! content: data["message"] , responder: data["responder"]["responder"] , visitor_id: 210 , user_id: 1
  	#ActionCable.server.broadcast "chatbot" , message: data["message"]
  end
  
  def appear(data)
    puts data
    #ActionCable.server.broadcast "appearchannel" , message: data["user"] , bool: data["bool"]
  end
  private
   def render_visitor(visitor)
    ApplicationController.renderer.render(partial: 'home/partials/show_active_visitors' , locals: { visitor: visitor })
  end

  def redis
    Redis.new
  end
end


 