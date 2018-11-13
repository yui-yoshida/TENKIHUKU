module PicturesHelper
  def choose_new_or_edit
    if action_name == "new" || action_name == "confirm"
      confirm_pictures_path
    elsif action_name == "edit"
      picture_path
    end
  end

  def weather_icon(weather)
    case weather
      when "clear-day" || "clear-night" then image_tag "clear-day.jpeg"
      when "rain" then image_tag "rain.jpeg"
      when "snow" then image_tag "snow.jpeg"
      when "sleed" then image_tag "sleed.jpeg"
      when "wind" then image_tag "wind.jpeg"
      when "fog" then image_tag "fog.jpeg"
      when "cloudy" then image_tag "cloudy.jpeg"
      else image_tag "sunny_cloudy.jpeg"
    end
  end
  def current_pictures(apparent_temperature)
    case apparent_temperature
      when (26..Float::INFINITY) then @current_temperature = 1
      when (21..25) then @current_temperature = 2
      when (16..20) then @current_temperature = 3
      when (12..15) then @current_temperature = 4
      when (7..11) then @current_temperature = 5
      else picture.weather = 6
    end
  end
end
