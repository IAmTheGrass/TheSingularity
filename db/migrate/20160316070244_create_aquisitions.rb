class CreateAquisitions < ActiveRecord::Migration
  def change
    create_table :aquisitions do |t|
    	t.integer :ai
    	t.integer :exploite
    	t.integer :cost
    	t.timestamps null: false
    end
  end
end
