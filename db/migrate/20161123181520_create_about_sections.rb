class CreateAboutSections < ActiveRecord::Migration[5.0]
  def change
    create_table :about_sections do |t|
      t.string :path
      t.string :nav
      t.text :content

      t.timestamps
    end
  end
end
