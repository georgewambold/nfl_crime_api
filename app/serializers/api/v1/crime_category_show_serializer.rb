module API
  module V1
    class CrimeCategoryShowSerializer < ActiveModel::Serializer
      attributes :id, :category
      has_many :crimes
    end
  end
end
