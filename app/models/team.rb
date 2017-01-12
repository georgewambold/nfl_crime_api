class Team < ApplicationRecord
  has_many :crimes
  has_many :positions, -> { distinct }, through: :crimes
  has_many :players, -> { distinct }, through: :crimes
  has_many :legal_encounters, -> { distinct }, through: :crimes
  has_many :crime_categories, -> { distinct }, through: :crimes
end
