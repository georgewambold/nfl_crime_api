module API
  module V1
    class TeamsController < ApplicationController
      def show
        @team = Team.find(params[:id])
        render json: @team
      end

      def index
        @teams = Team.all
        render json: @teams
      end
    end
  end
end
