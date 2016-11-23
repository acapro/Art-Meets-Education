class Kid < ApplicationRecord
  belongs_to :project
  has_many :images, dependent: :destroy
  accepts_attachments_for :images, attachment: :file, append: true
  def next
    return Kid.where("id > ?", self.id).first
  end
  def prev
    return Kid.where("id < ?", self.id).last
  end
end
