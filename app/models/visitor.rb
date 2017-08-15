class Visitor < ApplicationRecord
def online?
  !Redis.new.get("visitor_#{self.id}_online").nil?
end
end
