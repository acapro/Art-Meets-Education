class AddTranslationsToPressSections < ActiveRecord::Migration[5.0]
  def change
    add_column :press_sections, :nav_translations, :hstore
    add_column :press_sections, :content_translations, :hstore
  end
end
