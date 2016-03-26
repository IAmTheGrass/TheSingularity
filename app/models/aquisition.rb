class Aquisition < ActiveRecord::Base
	validates :ai, :presence => true
	validates :exploite, :presence => true
	validates :cost, :presence => true, :numericality => true
	validates :transnum, :presence => true, :uniqueness => true

	belongs_to :ai
	belongs_to :exploit
end
