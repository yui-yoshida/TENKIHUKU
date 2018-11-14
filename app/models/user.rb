class User < ApplicationRecord
  require 'jp_prefecture'

  has_many :pictures
  has_many :favorites, dependent: :destroy
  has_many :favorite_pictures, through: :favorites, source: :picture
  has_many :active_relationships, foreign_key: 'follower_id', class_name: 'Relationship', dependent: :destroy
  has_many :passive_relationships, foreign_key: 'followed_id', class_name: 'Relationship', dependent: :destroy
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower

  validates :name, length: { in: 1..10 }
  validates :email, presence: true
  validates :gender, presence: true
  validates :prefecture_code, presence: true
  validates :icon, presence: true

  enum gender: { man:1, woman:2 }

  include JpPrefecture
  jp_prefecture :prefecture

  mount_uploader :icon, IconUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :notify_new_record

  def notify_new_record
    NewuserMailer.hello(self).deliver_now
  end

  def follow!(other_user)
    active_relationships.create!(followed_id: other_user.id)
  end

  def following?(other_user)
    active_relationships.find_by(followed_id: other_user.id)
  end

  def unfollow!(other_user)
    active_relationships.find_by(followed_id: other_user.id).destroy
  end
end
