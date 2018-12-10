class ImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick
  process :resize_to_limit => [300, 300]
  storage :fog
end
