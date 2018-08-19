class Organisation < ApplicationRecord
	has_many :users 
 #  validate :validate_email
  validates_uniqueness_of :admin_email
  validates_format_of :website, :with => /\A(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?\Z/ix
	validates_presence_of :website , :name , :admin_email
  has_attached_file :avatar_icon, styles: { small: "40x40>", medium: "100x100>" }, default_url: "/assets/shree.png"
 # has_attached_file :bg_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  has_attached_file :bg_img
  validates_attachment_content_type :avatar_icon, content_type: /\Aimage\/.*\z/
  validates_attachment_content_type :bg_img, content_type: /\Aimage\/.*\z/
	before_save :destroy_image?

=begin
def validate_email
  if User.where(:email => self.admin_email).count > 0
    errors[:base] << "Following User already exists" 
  end
end
=end

private
  def destroy_image?
    self.image.clear if self.delete_logo == "1"
  end

end

