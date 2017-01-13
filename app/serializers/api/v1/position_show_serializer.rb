module API
  module V1
    class PositionShowSerializer < ActiveModel::Serializer
      attributes :id, :name 
      has_many :players
    end
  end
end
