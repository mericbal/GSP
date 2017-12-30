class CreateDailies < ActiveRecord::Migration[5.1]
  def change
    create_table :dailies do |t|
    	t.string :color, :make, :ticket_no
    	t.integer :price, :user_id, :location_id
    	t.boolean :paid, default: false 

      t.timestamps
    end
  end
end
