module API
  module V1
    class TeamSerializer < ActiveModel::Serializer
      attributes :id, :team_code, :team_name, :team_city
    end
  end
end