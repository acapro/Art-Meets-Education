# == Schema Information
#
# Table name: press_kits
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PressKit < ApplicationRecord
  validates :title, :kit, presence: true
  attachment :kit

  def kit_basename
    file = self.kit_filename
    return File.basename(file,File.extname(file))
  end
end
