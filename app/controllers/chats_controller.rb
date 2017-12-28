class ChatsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def show_all
    visitor_all = Message.where(:organisation_id => request.params[:id]).pluck(:visitor_id).uniq
    final_json = "[]" 
    final_json = JSON.parse(final_json)
    visitor_all.each do |v|
      hash_v = Message.where(:visitor_id => v)
      hash_v.each_with_index do |mblock , i| 
        if mblock["responder"] == "agent"
         final_json << { "message": hash_v[i-1]["content"] , "response": mblock["content"] , "visitor_id": mblock["visitor_id"] }
        end
      end
    end
    #json_hash = Message.where(:visitor_id => 10).select(:content , :responder).as_json(:except => :id)
    #json_hash.each_with_index do |hash, i|
    #  json_hash[i]["responder"] == "agent"

    #end   
    
    render json: JSON.pretty_generate(final_json)
  end

  def show
    @messages = Message.where(:visitor_id => params[:id]).all

  end
  def new 
    auth =  params[:auth_token]
    @visitor = Visitor.where(:auth_token => auth).first
  	@messages = Message.where(:visitor_id => @visitor.id).all
  	puts @messages.first.as_json 
  end
  def update
  end

  def destroy
  end
end
