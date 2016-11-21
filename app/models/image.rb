class Image < ApplicationRecord
  belongs_to :kid
  attachment :file
end
