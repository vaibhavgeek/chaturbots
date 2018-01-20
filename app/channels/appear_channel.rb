class AppearChannel < ApplicationCable::Channel
  def subscribed
     stream_from "appearchannel#{params[:organisation_id]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
  
end
