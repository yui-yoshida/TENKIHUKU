class Picture < ApplicationRecord
  mount_uploader :image, ImageUploader

  validates :image, presence: true
  validates :content, length: {maximum: 255}
end
