# == Schema Information
#
# Table name: kids
#
#  id                   :integer          not null, primary key
#  name                 :string
#  project_id           :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  short                :string
#  content              :text
#  video                :string
#  content_translations :hstore
#

class Kid < ApplicationRecord
  belongs_to :project
  has_many :images, dependent: :destroy
  accepts_attachments_for :images, attachment: :file, append: true
  validates :name, presence: true
  translates :content

  def next
    return Kid.where("id > ?", self.id).first
  end
  def prev
    return Kid.where("id < ?", self.id).last
  end
end
