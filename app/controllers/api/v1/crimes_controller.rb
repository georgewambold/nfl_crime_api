module API
  module V1
    class CrimesController < ApplicationController
      def show
        @crime = crime_with_associations.find(show_params[:id])
        render json: @crime, root: 'crime', adapter: :json
      end

      def index
        @crimes = crime_with_associations.page(params[:page])
        render json: @crimes, root: 'crimes', meta: pagination_metadata(:crimes), adapter: :json
      end

      private

      def crime_with_associations
        Crime.includes(:team, :player, :position, :legal_encounter, :crime_categories)
      end

      def show_params
        params.permit(:id)
      end
    end
  end
end
