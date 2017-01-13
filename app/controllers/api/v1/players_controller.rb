module API
  module V1
    class PlayersController < ApplicationController
      def show
        @player = player_with_association.find(show_params[:id])
        render json: @player, serializer: PlayerShowSerializer, root: 'player', adapter: :json
      end

      def index
        @players = Player.page(params[:page])
        render json: @players, meta: pagination_metadata(:players), root: 'players', adapter: :json
      end

      def top 
        @top_players = Player.find(Player.top)
        render json: @top_players, root: 'top_players', adapter: :json
      end

      private

      def player_with_association
        Player.includes(:crimes, :teams, :positions, :legal_encounters, :crime_categories)
      end

      def show_params
        params.permit(:id)
      end
    end
  end
end
