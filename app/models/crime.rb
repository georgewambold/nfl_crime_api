class Crime < ApplicationRecord
  belongs_to :player
  belongs_to :position
  belongs_to :team
  belongs_to :legal_encounter
  has_and_belongs_to_many :crime_categories
end
