class Artist < ActiveRecord::Base
	belongs_to :style

	VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates_presence_of :email 
	validates :email, format: { with: VALID_EMAIL }
	validates_uniqueness_of :email
end
