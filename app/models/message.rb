class Message < ApplicationRecord
	after_create_commit  do 
		 MessageBroadcastJob.perform_later(self) 
	end
		belongs_to :user
	belongs_to :visitor

end
