# == Schema Information
#
# Table name: about_sections
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

require 'test_helper'

class AboutSectionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
