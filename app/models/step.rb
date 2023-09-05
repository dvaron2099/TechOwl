class Step < ApplicationRecord
  belongs_to :root
  has_many :step_tools
  has_many :tools, through: :step_tools
end
