class ChatbotChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chatbox"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
  	ActionCable.server.broadcast "chatbox" , message: data["message"]
  end
end
