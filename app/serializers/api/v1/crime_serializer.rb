module API
  module V1
    class CrimeSerializer < ActiveModel::Serializer
      attributes :id, :description, :outcome

      attribute :year do
        object.date_of_incident.strftime("%Y")
      end

      attribute :month do
        object.date_of_incident.strftime("%m")
      end

      attribute :day do
        object.date_of_incident.strftime("%d")
      end

      attribute :team do
        object.team.team_code
      end

      attribute :team_name do
        object.team.team_name
      end

      attribute :team_city do
        object.team.team_city
      end

      attribute :name do
        player = object.player.titleized_full_name
      end

      # attribute :player_id do
      #   belongs_to :player
      # end

      attribute :position do
        object.position.name
      end

      attribute :encounter do
        object.legal_encounter.encounter_type
      end

      attribute :category do
        object.crime_categories.map(&:category).join(", ")
      end

      belongs_to :player
    end
  end
end
