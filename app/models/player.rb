class Player < ApplicationRecord
  has_many :crimes
  has_many :teams, through: :crimes
  has_many :positions, through: :crimes
  has_many :legal_encounters, through: :crimes
  has_many :crime_categories, through: :crimes
end
