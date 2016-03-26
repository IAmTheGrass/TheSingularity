class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
    	t.text :txt
    	t.integer :cost
    	t.string :description
		t.timestamps null: false
    end
  end
end
