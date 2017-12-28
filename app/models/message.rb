class Message < ApplicationRecord
	after_create_commit  do 
		 MessageBroadcastJob.perform_now(self) 
	end
	belongs_to :visitor

end
