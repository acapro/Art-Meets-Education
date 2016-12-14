# == Schema Information
#
# Table name: donations
#
#  id         :integer          not null, primary key
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Donation < ApplicationRecord
  validates :content, presence: true
  translates :content
end
