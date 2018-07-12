class UserOnlineChannel < ApplicationCable::Channel
  def subscribed
     stream_from "org_#{params[:organisation_id]}"
     REDIS.set("org_#{params[:organisation_id]}" , "1")
  end

  def unsubscribed
  	REDIS.del("org_#{params[:organisation_id]}")
  end
end
