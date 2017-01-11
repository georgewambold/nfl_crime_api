class Player < ApplicationRecord
  has_many :crimes
  has_many :teams, through: :crimes
  has_many :positions, through: :crimes
  has_many :legal_encounters, through: :crimes
  has_many :crime_categories, through: :crimes

  def titleized_full_name 
    "#{first_name.titleize} #{last_name.titleize}"
  end

  def last_arrest_associated_team
    latest_crime.team
  end

  def last_arrest_associated_position
    latest_crime.position
  end
  
  def crimes_count
    crimes.count
  end

  def latest_crime
    crimes.order(:date_of_incident).first
  end
end
