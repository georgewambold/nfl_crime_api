module API
  module V1
    class PositionsController < ApplicationController
      def show
        @position = Position.find(show_params[:id])
        render json: @position, root: 'position', serializer: PositionShowSerializer, adapter: :json
      end

      def index
        @positions = Position.all
        render json: @positions, root: 'positions', adapter: :json
      end

      private

      def show_params
        params.permit(:id)
      end
    end
  end
end
