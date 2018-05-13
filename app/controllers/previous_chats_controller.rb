class PreviousChatsController < ApplicationController
    protect_from_forgery with: :null_session

  def new
    @oid = request.params[:organisation_id]
    @end_json = return_end_json(@oid)

  end

  def return_end_json(oid)
    visitor_all = Message.where(:organisation_id => oid).pluck(:visitor_id).uniq
    final_json = []
    #final_json = JSON.parse(final_json)
    visitor_all.each do |v|
      hash_v = Message.where(:visitor_id => v , :ml => true).order("created_at ASC")
      hash_v.each_with_index do |mblock , i| 
        if mblock["responder"] == "agent"
         if hash_v[i-1]["responder"] != "agent"
          id_q = mblock["id"]
          id_r = hash_v[i-1]["id"]
            if hash_v[i-1]["message_c"] != ""
            final_json << { "message": hash_v[i-1]["message_c"] , "response": mblock["message_c"] , "idq": id_q , "idr": id_r }
            end
         end
        end
      end
    end
    end_json =  JSON.parse(final_json.to_json.to_s)
    return end_json
  end

  def edit
  	@message_q = Message.find(params["id2"])
  	@message_r = Message.find(params["id"])
  end

  def update
   Message.find(request.params[:id1]).update(:message_c => request.params[:message])
   Message.find(request.params[:id2]).update(:message_c => request.params[:response])
    @end_json = return_end_json(request.params[:id])
   @oid = request.params[:id]
   respond_to do |format|
      format.js {}
   end
  end

  def destroy
    Message.find(request.params[:id1]).update(:message_c => "")
    Message.find(request.params[:id2]).update(:message_c => "")
    @end_json = return_end_json(request.params[:id])
     @oid = request.params[:id]
     respond_to do |format|
      format.js {}
   end
  end

  private
  def message_params
		params.require(:message).permit(:content , :message_c , :organisation_id ) 
  end
end
