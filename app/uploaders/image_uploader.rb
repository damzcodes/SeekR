# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  # storage :file
  storage :file

  # Create different versions of your uploaded files:
  version :thumb do
    process :resize_to_fit => [50, 50]
  end

  version :profile do
    process :resize_to_fit => [200, 200]
  end


end
