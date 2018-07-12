class Visitor < ApplicationRecord
has_many :messages

def online?
    REDIS.get("#{self.auth_token}").present?
end

def unread?
	REDIS.get("unreadv_#{self.id}").present?	
end

def isempty?
	if Message.where(:visitor_id => self.id).count != 0
		return true
	else
		return false
	end
end

end
