module API
  module V1
    class CrimeCategoriesController < ApplicationController
      def show
        @crime_category = crime_category_with_associations.find(show_params[:id])
        render json: @crime_category, root: 'crime_category', serializer: CrimeCategoryShowSerializer, adapter: :json
      end

      def index
        @crime_categories = CrimeCategory.includes(:crimes).all
        render json: @crime_categories, root: 'crime_categories', meta: { page: 10 }, adapter: :json
      end

      private

      def crime_category_with_associations
        CrimeCategory.includes(:crimes, :players, :teams, :positions, :legal_encounters)
      end

      def show_params
        params.permit(:id)
      end
    end
  end
end
