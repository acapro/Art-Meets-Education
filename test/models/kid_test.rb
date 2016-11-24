# == Schema Information
#
# Table name: kids
#
#  id         :integer          not null, primary key
#  name       :string
#  project_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  short      :string
#  content    :text
#

require 'test_helper'

class KidTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
