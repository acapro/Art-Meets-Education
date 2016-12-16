class StoreMetadataPressKit < ActiveRecord::Migration[5.0]
  def change
    add_column :press_kits, :kit_filename, :string
    add_column :press_kits, :kit_size, :integer
    add_column :press_kits, :kit_content_type, :string
  end
end
