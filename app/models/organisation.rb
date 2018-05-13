class Organisation < ApplicationRecord
	  has_many :users 
	  validates_presence_of :website , :name , :admin_email
	  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
