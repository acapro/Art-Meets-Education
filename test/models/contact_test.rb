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

require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
