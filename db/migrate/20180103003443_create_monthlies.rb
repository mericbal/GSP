class CreateMonthlies < ActiveRecord::Migration[5.1]
  def change
    create_table :monthlies do |t|
    	t.string :first, :last, :phone, :make, :color, :paid, :ticket_no
    	t.integer :price, :user_id, :location_id

      t.timestamps
    end
  end
end
