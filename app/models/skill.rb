class Skill < ApplicationRecord
  has_many :area_skills
  has_many :areas, through: :area_skills
  has_many :skill_tools
  has_many :tools, through: :skill_tools
end
