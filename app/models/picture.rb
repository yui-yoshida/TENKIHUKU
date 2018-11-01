class Picture < ApplicationRecord
  mount_uploader :image, ImageUploader

  validates :image, presence: true
  validates :content, length: {maximum: 255}

  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user

  def like_user(user)
   favorites.find_by(user_id: user)
  end
end
