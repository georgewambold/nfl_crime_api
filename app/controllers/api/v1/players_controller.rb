module API
  module V1
    class PlayersController < ApplicationController
      def show
        @player = Player.find(show_params[:id])
        render json: @player
      end

      def index
        @players = Player.all
        render json: @players, root: 'players', adapter: :json
      end

      private 

      def show_params
        params.permit(:id)
      end
    end
  end
end
