class Visitor < ApplicationRecord
	has_many :messages
def online?
  !Redis.new.get("visitor_#{self.id}_online").nil?
end
end
