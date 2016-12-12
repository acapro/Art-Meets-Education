# == Schema Information
#
# Table name: press_sections
#
#  id                   :integer          not null, primary key
#  path                 :string
#  nav                  :string
#  content              :text
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  nav_translations     :hstore
#  content_translations :hstore
#

class PressSection < ApplicationRecord
  validates :path, :nav, :content, presence: true
  validates :path, format: {with: /\A[a-z0-9_\-]+\z/, message: "URL -> Only undercase / no spaces / no special symbols"}
  translates :nav, :content
end
