class AddTranslationsToDonations < ActiveRecord::Migration[5.0]
  def change
    add_column :donations, :content_translations, :hstore
  end
end
