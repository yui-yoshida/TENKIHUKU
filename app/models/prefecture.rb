class Prefecture < ApplicationRecord
  def current_temperature
    ForecastIO.forecast(
      latitude,
      longitude,
      params: {units: 'si'})['currently']['apparentTemperature']
  end

  def today_weather
    ForecastIO.forecast(
      latitude,
      longitude,
      params: {units: 'si'})['daily']['data'][0]['icon']
  end
end
