class NotificationsController < ApplicationController
  protect_from_forgery with: :null_session

	def main
	 @messages = Message.all
	end


	def ml
		puts request.params
		vid = Visitor.where(:auth_token => params[:auth]).first.id
		ml_key = vid.to_s + "ml"
		if params[:checked] == "true"
			redis.set(ml_key, 1)
		else
			redis.set(ml_key, 0)
		end
	end

	def automate
	    puts request.params
		vid = Visitor.where(:auth_token => params[:auth]).first.id
		ai_key = vid.to_s + "automate"
		if params[:checked] == "true"
			redis.set(ai_key, 1)
		else
			redis.set(ai_key, 0)
		end
	end

	private
	def redis 
		Redis.new
	end
end
