class Prefecture < ApplicationRecord
  def current_temperature
    ForecastIO.forecast(
      lat.to_s,
      long.to_s,
      params: {units: 'si'})['currently']['apparentTemperature']
  end

  def today_weather
    ForecastIO.forecast(
      lat.to_s,
      long.to_s,
      params: {units: 'si'})['daily']['icon']
  end

  # def today_temperature_high
  #   lat.to_s,
  #   long.to_s,
  #   params: {units: 'si'})['daily']['temperatureHigh']
  # end
end
