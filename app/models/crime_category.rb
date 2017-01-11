class CrimeCategory < ApplicationRecord
  has_and_belongs_to_many :crimes
  has_many :teams, through: :crimes
  has_many :players, through: :crimes
  has_many :positions, through: :crimes
  has_many :legal_encounters, through: :crimes
end
