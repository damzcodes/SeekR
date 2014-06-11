class Image < ActiveRecord::Base
  belongs_to :missing_person

  mount_uploader :image, ImageUploader
end
