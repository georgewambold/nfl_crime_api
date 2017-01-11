module API
  module V1
    class PlayersController < ApplicationController
      def show
        @player = Player.find(params[:id])
        render json: @player
      end

      def index
        @players = Player.all
        render json: @players
      end
    end
  end
end
