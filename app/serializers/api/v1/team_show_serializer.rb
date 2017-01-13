module API
  module V1
    class TeamShowSerializer < ActiveModel::Serializer
      attributes :id, :team_code, :team_name, :team_city

      attribute :crime_count do 
        object.crimes.count
      end
      has_many :players
    end
  end
end
