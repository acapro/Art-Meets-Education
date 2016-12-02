class AddTranslationsToAboutSections < ActiveRecord::Migration[5.0]
  def change
    add_column :about_sections, :nav_translations, :hstore
    add_column :about_sections, :content_translations, :hstore
  end
end
