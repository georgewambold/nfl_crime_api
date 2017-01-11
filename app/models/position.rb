class Position < ApplicationRecord
  has_many :crimes
  has_many :teams, through: :crimes
  has_many :players, through: :crimes
  has_many :legal_encounters, through: :crimes
  has_many :crime_categories, through: :crimes
end
