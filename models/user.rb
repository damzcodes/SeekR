class User < ActiveRecord::Base

belongs_to :organisations
validates :organisation, :email, :password, :presence => true
end
