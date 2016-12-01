# == Schema Information
#
# Table name: exhibits
#
#  id            :integer          not null, primary key
#  location      :string
#  content       :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  info_image_id :string
#

class Exhibit < ApplicationRecord
  attachment :info_image
  validates :location, :content, presence: true
end
