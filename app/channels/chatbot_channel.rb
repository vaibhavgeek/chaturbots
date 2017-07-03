class ChatbotChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chatbot"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
  	Message.create! content: data["message"]
  	#ActionCable.server.broadcast "chatbot" , message: data["message"]
  end
end
