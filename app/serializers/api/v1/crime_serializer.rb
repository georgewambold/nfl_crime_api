module API
  module V1
    class CrimeSerializer < ActiveModel::Serializer
      attributes :id, :description, :outcome
      attribute :date_of_incident


      def date_of_incident
        object.date_of_incident.strftime("%Y-%m-%d")
      end

      belongs_to :player
      belongs_to :team
      belongs_to :position
      has_many :crime_categories
    end
  end
end