class User < ActiveRecord::Base
	has_many :games
  
  #attr_accessor :password
  #before_save :encrypt_password
  
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
  
end
