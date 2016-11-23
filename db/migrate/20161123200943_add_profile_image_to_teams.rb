class AddProfileImageToTeams < ActiveRecord::Migration[5.0]
  def change
    add_column :teams, :profile_image_id, :string
  end
end
