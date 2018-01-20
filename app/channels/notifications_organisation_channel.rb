class NotificationsOrganisationChannel < ApplicationCable::Channel
  def subscribed
  	 organisation_id = params[:organisation]
     stream_from "notifications_org#{organisation_id}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def reset_counter_unread(data)
    redis.del('unreado_#{data["id"]}')
  end
  private

  def redis
  	Redis.new
  end
end
