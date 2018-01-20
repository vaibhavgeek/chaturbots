class NotificationsVisitorChannel < ApplicationCable::Channel
  def subscribed
     auth = params[:auth_t]
     stream_from "notifications_visitor#{auth}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def reset_counter_unread
  	redis.del('unread_309')
  end
  private

  def redis
  	Redis.new
  end
end
