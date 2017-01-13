module API
  module V1
    class PositionsController < ApplicationController
      def show
        @position = Position.find(show_params[:id])
        render json: @position
      end

      def index
        @positions = Position.all
        render json: @positions, root: 'positions', meta: { page: 10 }, adapter: :json
      end

      private

      def show_params
        params.permit(:id)
      end
    end
  end
end
