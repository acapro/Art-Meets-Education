# == Schema Information
#
# Table name: about_sections
#
#  id         :integer          not null, primary key
#  path       :string
#  nav        :string
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class AboutSection < ApplicationRecord
  validates :path, :nav, :content, presence: true
  validates :path, format: {with: /\A[a-z0-9_\-]+\z/, message: "URL -> Only undercase / no spaces / no special symbols"}
  translates :nav, :content
end
