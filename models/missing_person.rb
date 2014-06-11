class MissingPerson < ActiveRecord::Base
  belongs_to :organisation
  has_many :images

  accepts_nested_attributes_for :images
end
