class Visitor < ApplicationRecord
has_many :messages

def online?
    REDIS.get("#{self.auth_token}").present?
end


end
