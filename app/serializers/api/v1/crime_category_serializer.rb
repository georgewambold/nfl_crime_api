module API
  module V1
    class CrimeCategorySerializer < ActiveModel::Serializer
      attributes :id, :category

      attribute :crime_count do 
        object.crimes.count
      end
    end
  end
end
