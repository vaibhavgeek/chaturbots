require 'net/http'
require 'uri'
class MessageBroadcastJob < ApplicationJob
  queue_as :high_priority

  def perform(message)
    auth_token = message.visitor.auth_token
    ActionCable.server.broadcast "chatbot#{auth_token}" , message: render_text_message(message)

  end

  private

  def render_text_message(message)
  	ApplicationController.renderer.render(partial: 'messages/message' , locals: { message: message })
  end

  def spell_checker_message(message,correct)
    ApplicationController.renderer.render(partial: 'messages/spell_check' , locals: { message: message , correct: correct})
  end
  
end
