class AddInfoImageToExhibits < ActiveRecord::Migration[5.0]
  def change
    add_column :exhibits, :info_image_id, :string
  end
end
