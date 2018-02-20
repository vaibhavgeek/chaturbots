class Message < ApplicationRecord
	after_create_commit  do 
		 MessageBroadcastJob.perform_now(self) 
	end
	belongs_to :visitor
	belongs_to :organisation
	before_save :default_value_c
	def default_value_c
		self.message_c ||= self.content
	end

end
