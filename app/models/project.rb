# == Schema Information
#
# Table name: projects
#
#  id                   :integer          not null, primary key
#  year                 :date
#  country              :string
#  city                 :string
#  slum                 :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  content              :text
#  content_translations :hstore
#

class Project < ApplicationRecord
  has_many :kids
  validates :year, :country, :city, :slum, :content, presence: true
  translates :content
end
