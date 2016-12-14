class AddLogoToPartners < ActiveRecord::Migration[5.0]
  def change
    add_column :partners, :logo_id, :string
  end
end
