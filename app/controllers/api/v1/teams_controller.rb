module API
  module V1
    class TeamsController < ApplicationController
      def show
        @team = Team.find(show_params[:id])
        render json: @team, serializer: TeamShowSerializer
      end

      def index
        @teams = Team.page(params[:page])
        render json: @teams, meta: pagination_metadata(:teams),root: 'teams' , adapter: :json
      end

      private

      def show_params
        params.permit(:id)
      end
    end
  end
end
