# == Schema Information
#
# Table name: teams
#
#  id               :integer          not null, primary key
#  name             :string
#  origin           :string
#  content          :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  profile_image_id :string
#

class Team < ApplicationRecord
  attachment :profile_image
  validates :name, :origin, :content, :profile_image, presence: true
end
