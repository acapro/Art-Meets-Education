class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.references :kid, foreign_key: true
      t.string :file_id
      t.timestamps
    end
  end
end
