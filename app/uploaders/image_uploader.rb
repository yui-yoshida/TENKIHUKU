class ImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick
  process :resize_to_limit => [500, 500]
  storage :fog
end
