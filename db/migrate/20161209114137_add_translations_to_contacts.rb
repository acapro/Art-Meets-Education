class AddTranslationsToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :section_translations, :hstore
  end
end
