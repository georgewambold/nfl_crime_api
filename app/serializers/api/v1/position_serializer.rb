module API
  module V1
    class PositionSerializer < ActiveModel::Serializer
      attributes :id, :name

      attribute :crime_count do 
        object.crimes.count
      end
    end
  end
end
