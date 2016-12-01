# == Schema Information
#
# Table name: exhibits
#
#  id            :integer          not null, primary key
#  location      :string
#  content       :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  info_image_id :string
#

require 'test_helper'

class ExhibitTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
