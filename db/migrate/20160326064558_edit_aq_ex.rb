class EditAqEx < ActiveRecord::Migration
  def change
  	rename_column :aquisitions, :exploite_id, :exploit_id
  end
end
