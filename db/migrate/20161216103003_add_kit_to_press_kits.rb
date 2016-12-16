class AddKitToPressKits < ActiveRecord::Migration[5.0]
  def change
    add_column :press_kits, :kit_id, :string
  end
end
