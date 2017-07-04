class MessageBroadcastJob < ApplicationJob
  queue_as :default

  def perform(message)
  	ActionCable.server.broadcast "chatbot" , message: render_message(message)
  	if message.content == "Hello"
  		Message.create! content: "Hello Haha hahah "
  	end
    # Do something later
  end
 
  private

  def render_message(message)
  	ApplicationController.renderer.render(partial: 'messages/message' , locals: { message: message })
  end
end
