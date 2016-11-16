class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.date :year
      t.string :country
      t.string :city
      t.string :slum

      t.timestamps
    end
  end
end
