class FixForRelationships < ActiveRecord::Migration
  def change
  	rename_column :aquisitions, :ai, :ai_id
  	rename_column :aquisitions, :exploite, :exploite_id
  	rename_column :exploits, :code, :code_id
  end
end
