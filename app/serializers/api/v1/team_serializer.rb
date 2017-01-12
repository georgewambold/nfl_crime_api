module API
  module V1
    class TeamSerializer < ActiveModel::Serializer
      attributes :id, :team_code, :team_name, :team_city

      has_many :players
      has_many :crimes
    end
  end
end
