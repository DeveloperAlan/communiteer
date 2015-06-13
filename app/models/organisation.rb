class Organisation < ActiveRecord::Base
  has_many :Volunteers
  has_many :Opps
end
