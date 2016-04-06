class Aquisition < ActiveRecord::Base
	validates :ai_id, :presence => true
	validates :exploit_id, :presence => true
	validates :cost, :presence => true, :numericality => true
	validates :transnum, :presence => true, :uniqueness => true

	belongs_to :ai
	belongs_to :exploit
end
