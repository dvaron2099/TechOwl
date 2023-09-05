class Area < ApplicationRecord
  has_many :area_skills
  has_many :skills, through: :area_skills
  has_many :tool_areas
  has_many :tools, through: :tool_areas
  belongs_to :root, optional: true
end
