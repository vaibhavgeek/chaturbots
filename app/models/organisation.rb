class Organisation < ApplicationRecord
	  has_many :users 
	  validates_presence_of :website , :name , :admin_email
end
