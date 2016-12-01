class CreateExhibits < ActiveRecord::Migration[5.0]
  def change
    create_table :exhibits do |t|
      t.string :location
      t.text :content

      t.timestamps
    end
  end
end
