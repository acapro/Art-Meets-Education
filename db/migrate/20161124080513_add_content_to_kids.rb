class AddContentToKids < ActiveRecord::Migration[5.0]
  def change
    add_column :kids, :short, :string
    add_column :kids, :content, :text
  end
end
