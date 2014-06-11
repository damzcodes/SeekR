class MissingPerson < ActiveRecord::Base
  belongs_to :organisation
  has_many :images

  accepts_nested_attributes_for :images

  after_create do
    unless images.empty?
      HTTMultiParty.post('http://localhost:9292/photos', :query => {
        :user_id => self.id,
        :photos => images.map {|i| File.new(i.image.file.file) }
      })
    end
  end
end
