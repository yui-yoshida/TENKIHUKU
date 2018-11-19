class ImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick
  process :resize_to_limit => [300, 300]

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  if Rails.env == 'production'
    storage :file
  else
    storage :file
  end
end
