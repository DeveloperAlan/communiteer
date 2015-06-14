class Opp < ActiveRecord::Base
  belongs_to :organisation
  has_many :opp_skills
  has_many :skills, through: :opp_skills
end
