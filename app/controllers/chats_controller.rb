class ChatsController < ApplicationController

  def index
    @vis = Visitor.where(:organisation_id => request.params[:organisation_id])
    @vis.each_with_index do |v,i|
      if Message.where(:visitor_id => v.id).count == 0
        #@vis = @vis.delete(v)
      end
    end
  end

  def show_all
    visitor_all = Message.where(:organisation_id => request.params[:id]).pluck(:visitor_id).uniq
    final_json = []
    #final_json = JSON.parse(final_json)
    visitor_all.each do |v|
      hash_v = Message.where(:visitor_id => v , :ml => true).order("created_at ASC")
      puts JSON.pretty_generate(hash_v.as_json)
      puts "\n\n"
      hash_v.each_with_index do |mblock , i| 
        if mblock["responder"] == "agent"
         if hash_v[i-1]["responder"] != "agent"
            if hash_v[i-1]["message_c"] != ""
              final_json << { "message": hash_v[i-1]["message_c"] , "response": mblock["message_c"]  }
            end
         end
        end
      end
    end
    end_json = JSON.parse(final_json.to_json.to_s)
     respond_to do |format|
          format.json { render :json =>  JSON.pretty_generate(end_json) }
      end
    #json_hash = Message.where(:visitor_id => 10).select(:content , :responder).as_json(:except => :id)
    #json_hash.each_with_index do |hash, i|
    #  json_hash[i]["responder"] == "agent"

    #end   
   # 
   # render json: JSON.pretty_generate(end_json)
  end

  def show
    @messages = Message.where(:visitor_id => params[:id]).order("created_at ASC").all

  end
  def new 
    auth =  params[:auth_token]
    @visitor = Visitor.where(:auth_token => auth).first
  	@messages = Message.where(:visitor_id => @visitor.id).order("created_at ASC").all
  	ml_on = redis.get(@visitor.id.to_s + "ml")
    automate_on = redis.get(@visitor.id.to_s + "automate")

    @checked_ml = "checked" if ml_on.to_s == "1"
    @checked_auto = "checked" if automate_on.to_s == "1"
  end
  def update
  end

  def destroy
  end

  private
  def redis
    Redis.new
  end
end
