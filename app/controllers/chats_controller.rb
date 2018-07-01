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
    visitor_all.each do |v|
      hash_v = Message.where(:visitor_id => v , :ml => true).order("created_at ASC")
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
  end

  def show
        @organisation = Organisation.find(request.params[:organisation_id])

    @messages = Message.where(:visitor_id => params[:id]).order("created_at ASC").all

  end
  def new 
    auth =  params[:auth_token]
    @visitor = Visitor.where(:auth_token => auth).first
  	@messages = Message.where(:visitor_id => @visitor.id).order("created_at ASC").all
  	@organisation = Organisation.find(request.params[:organisation_id])
    ml_on = redis.get(@visitor.id.to_s + "ml")
    automate_on = redis.get(@visitor.id.to_s + "automate")
    redis.del("unreado_#{@visitor.organisation_id}")
    @checked_ml = "checked" if ml_on.to_s == "1"
    @checked_auto = "checked" if automate_on.to_s == "1"
  end
  def update
  end

  def destroy
  end

  private
  def redis
    REDIS
  end
end
