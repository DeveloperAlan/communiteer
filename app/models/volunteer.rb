class Volunteer < ActiveRecord::Base

  belongs_to :organisation
  has_many :volunteer_skills
  has_many :skills, through: :volunteer_skills
  has_many :commitments
  has_many :causes
  has_many :opps, through: :commitments


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_uniqueness_of :email
end
