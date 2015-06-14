class Skill < ActiveRecord::Base
  has_many :opp_skills
  has_many :opps, through: :opp_skills
  has_many :volunteer_skills
  has_many :volunteers, through: :volunteer_skills
end
