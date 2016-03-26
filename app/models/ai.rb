class Ai < ActiveRecord::Base
	validates :name, :presence => true, :uniqueness => true
	has_many :aquisitions
end
