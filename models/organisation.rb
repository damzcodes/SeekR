class Organisation < ActiveRecord::Base

has_many :missing_people
has_many :users
end
