# == Schema Information
#
# Table name: contacts
#
#  id                   :integer          not null, primary key
#  section              :text
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  section_translations :hstore
#

class Contact < ApplicationRecord
  validates :section, presence: true
  translates :section
end
