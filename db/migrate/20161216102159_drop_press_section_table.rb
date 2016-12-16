class DropPressSectionTable < ActiveRecord::Migration[5.0]
  def up
    drop_table :press_sections
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
