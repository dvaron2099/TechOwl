class Tool < ApplicationRecord
  has_many :skill_tools
  has_many :skills, through: :skill_tools
  has_many :tool_areas
  has_many :areas, through: :tool_areas
  belongs_to :tool_type
end
