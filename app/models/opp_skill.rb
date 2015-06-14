class OppSkill < ActiveRecord::Base
  belongs_to :skill
  belongs_to :opp
end
