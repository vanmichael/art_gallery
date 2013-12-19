class Style < ActiveRecord::Base
	has_many :artists

	validates_uniqueness_of :name

	VALID_NAME = /\A[a-zA-Z]+\z/

	validates :name, format: { with: VALID_NAME }
end
