module API
  module V1
    class CrimeCategoriesController < ApplicationController
      def show
        @crime_category = CrimeCategory.find(show_params[:id])
        render json: @crime_category, serializer: CrimeCategoryShowSerializer
      end

      def index
        @crime_categories = CrimeCategory.all
        render json: @crime_categories, root: 'crime_categories', meta: { page: 10 }, adapter: :json
      end

      private

      def show_params
        params.permit(:id)
      end
    end
  end
end
