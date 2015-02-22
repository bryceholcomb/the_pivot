# encoding: utf-8
class ListingImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick
  # storage :file
  storage :fog
  if Rails.env.production?
    storage :fog
  else
    storage :file
  end

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def default_url
    ActionController::Base.helpers.asset_path("fallback/default_image.png")
  end

  # Process files as they are uploaded:
  # process :scale => [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  version :thumb do
    process resize_to_fit: [400, 400]
  end

  def etension_white_list
    %w(jpg jpeg gif png tiff)
  end
end
