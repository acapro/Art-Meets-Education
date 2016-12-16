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
  validates :title, presence: true
end
