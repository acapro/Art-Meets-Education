# == Schema Information
#
# Table name: projects
#
#  id         :integer          not null, primary key
#  year       :date
#  country    :string
#  city       :string
#  slum       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Project < ApplicationRecord
  has_many :kids
end
