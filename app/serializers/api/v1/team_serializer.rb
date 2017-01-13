module API
  module V1
    class TeamSerializer < ActiveModel::Serializer
      attributes :id, :team_code, :team_name, :team_city

      attribute :crime_count do 
        object.crimes.count
      end
    end
  end
end
