class Ai < ActiveRecord::Base
	validates :name, :presence => true, :uniqueness => true
	
	has_many :aquisitions
	has_many :exploits, through: :aquisitions
	has_many :codes, through: :exploits
end
