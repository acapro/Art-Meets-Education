# == Schema Information
#
# Table name: partners
#
#  id         :integer          not null, primary key
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  logo_id    :string
#

class Partner < ApplicationRecord
  attachment :logo
  validates :url, :logo, presence: true
end
