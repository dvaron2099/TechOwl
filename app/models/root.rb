class Root < ApplicationRecord
  belongs_to :area
  has_many :steps
end
