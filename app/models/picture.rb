class Picture < ApplicationRecord
  mount_uploader :image, ImageUploader

  validates :image, presence: true
  validates :content, length: { maximum: 255 }

  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user

  enum gender: { man:1, woman:2 }

  def setting_weather_status(temperature)
    case temperature
    when (26..Float::INFINITY) then self.weather = 1
    when (21..25.99) then self.weather = 2
    when (16..20.99) then self.weather = 3
    when (12..15.99) then self.weather = 4
    when (7..11.99) then self.weather = 5
    else self.weather = 6
    end
  end

  def setting_start_time
    self.start_time = Date.today
  end
end
