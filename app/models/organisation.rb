class Organisation < ApplicationRecord
	  has_many :users 
	  validates_presence_of :website , :name , :admin_email
	 

	  has_one_attached :avatar #bot icon
	  has_one_attached :bg_image 


end
