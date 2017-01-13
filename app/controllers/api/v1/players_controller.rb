module API
  module V1
    class PlayersController < ApplicationController
      def show
        @player = Player.find(show_params[:id])
        render json: @player, root: 'player', adapter: :json
      end

      def index
        @players = Player.page(params[:page])
        render json: @players, meta: pagination_metadata(:players), root: 'players', adapter: :json
      end

      private

      def show_params
        params.permit(:id)
      end
    end
  end
end
