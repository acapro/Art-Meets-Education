class AddTranslationsToExhibits < ActiveRecord::Migration[5.0]
  def change
    add_column :exhibits, :content_translations, :hstore
  end
end
