class Kid < ApplicationRecord
  belongs_to :project
  has_many :images, dependent: :destroy
  accepts_attachments_for :images, attachment: :file, append: true
end
