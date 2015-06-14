class Organisation < ActiveRecord::Base
  has_many :volunteers
  has_many :opps
end
