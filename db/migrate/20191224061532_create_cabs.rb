class CreateCabs < ActiveRecord::Migration[5.2]
  def change
    create_table :cabs do |t|
      t.integer :number_of_seats
      t.integer :cab_number
      t.timestamps
    end
  end
end
