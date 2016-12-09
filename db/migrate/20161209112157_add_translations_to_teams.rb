class AddTranslationsToTeams < ActiveRecord::Migration[5.0]
  def change
    add_column :teams, :origin_translations, :hstore
    add_column :teams, :content_translations, :hstore
  end
end
