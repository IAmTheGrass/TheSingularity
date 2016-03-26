class Code < ActiveRecord::Base
	validates :txt, :presence => true, :uniqueness => true
	validates :cost, :presence => true, :numericality => true
	validates :description, :presence => true

	has_many :exploits
	has_many :aquisitions, through: :exploits
end