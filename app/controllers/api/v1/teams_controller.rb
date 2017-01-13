module API
  module V1
    class TeamsController < ApplicationController
      def show
        @team = Team.includes(:players).find(show_params[:id])
        render json: @team, serializer: TeamShowSerializer
      end

      def index
        @teams = Team.all
        render json: @teams,root: 'teams' , adapter: :json
      end

      private

      def show_params
        params.permit(:id)
      end
    end
  end
end
