class AppearChannel < ApplicationCable::Channel
  def subscribed
     stream_from "appearchannel#{params[:organisation_id]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
  
  def speak(data)
  	auth_token = data["data"]["auth_token"]
  	if data["data"]["online"].to_s != "true"
      REDIS.del("#{auth_token}")
  	else
  	  REDIS.set("#{auth_token}" , "1")
    end

  end
end

