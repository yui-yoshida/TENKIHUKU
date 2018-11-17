class IconUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  storage :fog
  process :resize_to_limit => [80, 80]

  version :thumb_circle do
    process :crop_to_circle
  end

  def crop_to_circle
    manipulate! do |img|
      img.crop "152x152+164+15"
  end
end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end
