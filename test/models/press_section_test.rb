# == Schema Information
#
# Table name: press_sections
#
#  id         :integer          not null, primary key
#  path       :string
#  nav        :string
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class PressSectionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
