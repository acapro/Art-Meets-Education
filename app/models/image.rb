# == Schema Information
#
# Table name: images
#
#  id         :integer          not null, primary key
#  kid_id     :integer
#  file_id    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Image < ApplicationRecord
  belongs_to :kid
  attachment :file
end
