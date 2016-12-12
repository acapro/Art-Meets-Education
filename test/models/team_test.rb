# == Schema Information
#
# Table name: teams
#
#  id                   :integer          not null, primary key
#  name                 :string
#  origin               :string
#  content              :text
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  profile_image_id     :string
#  origin_translations  :hstore
#  content_translations :hstore
#

require 'test_helper'

class TeamTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
