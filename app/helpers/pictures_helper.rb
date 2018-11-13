module PicturesHelper
  def choose_new_or_edit
    if action_name == "new" || action_name == "confirm"
      confirm_pictures_path
    elsif action_name == "edit"
      picture_path
    end
  end

  # def weather_icon(@weather)
  #   weather = @weather
  #   if @weather == "clear-day" || @reather == "clear-night"
  #     image_tag "clear-day.jpeg"
  #   elsif weather == "rain"
  #       image_tag "rain.jpeg"
  #   elsif  weather == "snow"
  #     image_tag "snow.jpeg"
  #   elsif  weather == "sleed"
  #       image_tag "sleed.jpeg"
  #   elsif  weather == "wind"
  #      image_tag "wind.jpeg"
  #   elsif  weather == "fog"
  #      image_tag "fog.jpeg"
  #   elsif  weather == "cloudy"
  #      image_tag "cloudy.jpeg"
  #   else
  #      image_tag "sunny_cloudy.jpeg"
  #   end
  # end
end
