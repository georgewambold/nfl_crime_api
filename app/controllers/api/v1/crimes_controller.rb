module API
  module V1
    class CrimesController < ApplicationController
      def show
        @crime = Crime.find(params[:id])
        render json: @crime
      end

      def index
        @crimes = Crime.all
        render json: @crimes
      end
    end
  end
end
