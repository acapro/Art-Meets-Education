class AddTranslationsToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :content_translations, :hstore
  end
end
