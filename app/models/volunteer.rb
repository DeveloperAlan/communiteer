class Volunteer < ActiveRecord::Base
  belongs_to :Organisation
  has_many :Skill
end
