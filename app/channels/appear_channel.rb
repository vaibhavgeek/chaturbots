class AppearChannel < ApplicationCable::Channel
  def subscribed
     stream_from "appearchannel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
  
end
