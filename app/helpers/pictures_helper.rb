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
end
