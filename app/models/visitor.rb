class Visitor < ApplicationRecord
has_many :messages

def online?
  !Redis.new.get("#{self.auth_token}").nil?
end


end
