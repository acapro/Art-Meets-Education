# == Schema Information
#
# Table name: donations
#
#  id                   :integer          not null, primary key
#  content              :text
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  content_translations :hstore
#

require 'test_helper'

class DonationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
