class PreviousChatsController < ApplicationController
  def new
  	visitor_all = Message.where(:organisation_id => request.params[:organisation_id]).pluck(:visitor_id).uniq
    final_json = []
    #final_json = JSON.parse(final_json)
    visitor_all.each do |v|
      hash_v = Message.where(:visitor_id => v , :ml => true).order("created_at ASC")
      puts JSON.pretty_generate(hash_v.as_json)
      puts "\n\n"
      hash_v.each_with_index do |mblock , i| 
        if mblock["responder"] == "agent"
         if hash_v[i-1]["responder"] != "agent"
            final_json << { "message": hash_v[i-1]["content"] , "response": mblock["content"]  }
         end
        end
      end
    end
    @end_json =  JSON.parse(final_json.to_json.to_s)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
