module API
  module V1
    class CrimesController < ApplicationController
      def show
        @crime = Crime.find(show_params[:id])
        render json: @crime, root: 'crime', adapter: :json
      end

      def index
        @crimes = Crime.all
        render json: @crimes, root: 'crimes', meta: { page: 10 }, adapter: :json
      end

      private

      def show_params
        params.permit(:id)
      end
    end
  end
end
