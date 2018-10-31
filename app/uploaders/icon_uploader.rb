class IconUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  storage :file
  process :resize_to_limit => [80, 80]

  version :thumb_circle do
  # process 'convert -size 350x350 xc:transparent -fill original.jpeg -draw "circle 240,90 300,45" -crop 152x152+164+15 +repage thumb.png'
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
