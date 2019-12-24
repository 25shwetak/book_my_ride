class ChangeCabNumberToBeStringInCabs < ActiveRecord::Migration[5.2]
  def change
    change_column :cabs, :cab_number, :string
  end
end
