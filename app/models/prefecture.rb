class Prefecture < ApplicationRecord
  def current_temperature
    forecast['currently']['apparentTemperature']
  end

  def today_weather
    daily_data['icon']
  end

  def temperature_high
    daily_data['temperatureHigh']
  end

  def temperature_low
    daily_data['temperatureLow']
  end

  def rain_possibility
    daily_data['precipProbability']*100
  end

  private

  def forecast
    @forecast ||= ForecastIO.forecast(
      latitude,
      longitude,
      params: { units: 'si', lang: 'ja' })
  end

  def daily_data
    forecast['daily']['data'][0]
  end
end
