class AddTranslationsToKids < ActiveRecord::Migration[5.0]
  def change
    add_column :kids, :content_translations, :hstore
  end
end
