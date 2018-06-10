class Organisation < ApplicationRecord
	  has_many :users 
	  validates_presence_of :website , :name , :admin_email
	 
  has_attached_file :avatar_icon, styles: { small: "40x40>", medium: "100x100>" }, default_url: "/assets/shree.png"
 # has_attached_file :bg_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  has_attached_file :bg_img

    validates_attachment_content_type :avatar_icon, content_type: /\Aimage\/.*\z/
  validates_attachment_content_type :bg_img, content_type: /\Aimage\/.*\z/

end

