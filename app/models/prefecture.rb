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
      params: {units: 'si'})['daily']['data'][0]['icon']
  end
end
