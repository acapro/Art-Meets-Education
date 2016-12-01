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
#  content    :text
#

require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
