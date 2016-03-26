class AddTransid < ActiveRecord::Migration
  def change
  	add_column :aquisitions, :transnum, :integer
  end
end
