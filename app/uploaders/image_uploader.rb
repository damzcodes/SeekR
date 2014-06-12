# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :file

  # Create different versions of your uploaded files:
  version :thumb do
    process :resize_to_fit => [200, 200]
  end

  version :profile do
    process :resize_to_fit => [400, 400]
  end

  # process :detect_faces

  # def detect_faces
  #   binding.pry
  # end


end
