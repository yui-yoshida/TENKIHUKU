class IconUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
    process :resize_to_limit => [80, 80]
    version :thumb_circle do
    process :crop_to_circle
  end
  def crop_to_circle
    manipulate! do |img|
      img.crop "152x152+164+15"
  end
end
  storage :fog
end
