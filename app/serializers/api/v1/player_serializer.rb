module API
  module V1
    class PlayerSerializer < ActiveModel::Serializer
      attributes :id

      attribute :name do
        object.titleized_full_name
      end

      attribute :last_arrest_associated_team do
        object.last_arrest_associated_team.team_code
      end

      attribute :last_arrest_associated_team_name do
        object.last_arrest_associated_team.team_name
      end

      attribute :last_arrest_associated_position do
        object.last_arrest_associated_position.name
      end

      attribute :arrest_count do
        object.crimes_count
      end

      has_many :teams
      has_many :crimes
    end
  end
end
