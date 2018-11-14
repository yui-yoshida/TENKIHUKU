class Picture < ApplicationRecord
  mount_uploader :image, ImageUploader

  validates :image, presence: true
  validates :content, length: {maximum: 255}

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

  # def setting_current_temperature(temperature)
  #   case temperature
  #   when (26..Float::INFINITY) then @current_temperature = 1
  #   when (21..25) then @current_temperature = 2
  #   when (16..20) then @current_temperature = 3
  #   when (12..15) then @current_temperature = 4
  #   when (7..11) then @current_temperature = 5
  #   else @current_temperature = 6
  #   end
  # end
#   def weather(picture,apparent_temperature)
#   case apparent_temperature = apparent_temperature
#   when (26..Float::INFINITY) then picture.weather = 1
#     when (21..25) then picture.weather = 2
#     when (16..20) then picture.weather = 3
#     when (12..15) then picture.weather = 4
#     when (7..11) then picture.weather = 5
#     else picture.weather = 6
#   end
# end

end
