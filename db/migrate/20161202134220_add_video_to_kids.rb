class AddVideoToKids < ActiveRecord::Migration[5.0]
  def change
    add_column :kids, :video, :string
  end
end
