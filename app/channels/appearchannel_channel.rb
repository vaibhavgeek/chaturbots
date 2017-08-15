class AppearchannelChannel < ApplicationCable::Channel
  def subscribed
  	stream_from "appearchannel"
  end

  def unsubscribed
      
  end

 

  
 
  
end
