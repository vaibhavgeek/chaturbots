class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable ,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :name


  after_create_commit do 
  	DefaultIntentsJob.perform_later(self)
  end
end
